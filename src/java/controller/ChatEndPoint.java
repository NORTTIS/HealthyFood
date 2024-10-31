package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import dao.MessageDao;
import jakarta.websocket.OnClose;
import jakarta.websocket.OnMessage;
import jakarta.websocket.OnOpen;
import jakarta.websocket.Session;
import jakarta.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Calendar;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Norttie
 */
@ServerEndpoint("/chat")
public class ChatEndPoint {

    // Lưu các phiên của người dùng
    private static Map<Integer, Session> userSessions = new ConcurrentHashMap<>();
    private static Set<Session> clients = ConcurrentHashMap.newKeySet();
    private static final String API_KEY = "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";

    @OnOpen
    public void onOpen(Session session) {
        String queryString = session.getRequestURI().getQuery();
        String userIdString = getQueryParam(queryString, "userId");
        try {
            // Chuyển đổi userId từ chuỗi sang số nguyên
            int userId = Integer.parseInt(userIdString);

            // Liên kết session với userId
            userSessions.put(userId, session);
            clients.add(session);

        } catch (NumberFormatException e) {
            System.out.println("Invalid userId format");
        }
    }

    @OnMessage
    public void onMessage(String message, Session session) throws IOException {
        JSONObject jsonMessage = new JSONObject(message);
        int senderId = jsonMessage.getInt("senderId");
        int receiverId = jsonMessage.getInt("receiverId");
        String messageContent = jsonMessage.getString("content");
        // Lấy thời gian hiện tại
        Calendar calendar = Calendar.getInstance();
        int hours = calendar.get(Calendar.HOUR_OF_DAY); // Giờ (24 giờ)
        int minutes = calendar.get(Calendar.MINUTE); // Phút

        // Xác định khoảng thời gian (a.m. hoặc p.m.)
        String period = hours < 12 ? "a.m." : "p.m.";
        // Chuyển đổi giờ về định dạng 12 giờ
        hours = hours % 12 == 0 ? 12 : hours % 12;
        // Định dạng thời gian
        String formattedTime = String.format("%02d:%02d %s", hours, minutes, period);
        jsonMessage.put("mestime", formattedTime);

        if (receiverId == -1) { // Kiểm tra nếu người nhận là hệ thống
            // Gọi API ChatGPT để xử lý và lấy phản hồi
            String botResponse = getBotResponse(messageContent);

            // Tạo JSON cho phản hồi của bot
            JSONObject jsonResponse = new JSONObject();
            jsonResponse.put("senderId", -1); // Hoặc ID của hệ thống
            jsonResponse.put("receiverId", senderId); // Người gửi là người yêu cầu
            jsonResponse.put("content", botResponse);
            jsonResponse.put("mestime", formattedTime);
            // Hiển thị tin nhắn cho người dùng
            for (Map.Entry<Integer, Session> entry : userSessions.entrySet()) {
                if (entry.getKey() == senderId || entry.getKey() == receiverId) {
                    entry.getValue().getBasicRemote().sendText(jsonMessage.toString());
                }
            }

            // Gửi phản hồi về cho người gửi
            for (Map.Entry<Integer, Session> entry : userSessions.entrySet()) {
                if (entry.getKey() == senderId) {
                    entry.getValue().getBasicRemote().sendText(jsonResponse.toString());

                }
            }

        } else {
            new MessageDao().saveMessage(senderId, receiverId, messageContent);
            // Gửi tin nhắn giữa các người dùng với nhau
            for (Map.Entry<Integer, Session> entry : userSessions.entrySet()) {
                if (entry.getKey() == senderId || entry.getKey() == receiverId) {
                    entry.getValue().getBasicRemote().sendText(jsonMessage.toString());
                }
            }
        }
    }

    @OnClose
    public void onClose(Session session) {
        // Xóa phiên khỏi danh sách khi người dùng đóng kết nối
        clients.remove(session);
        userSessions.values().remove(session); // Xóa session của người dùng tương ứng
    }
    // Hàm lấy giá trị của một tham số trong chuỗi query

    private String getQueryParam(String queryString, String param) {
        for (String paramPair : queryString.split("&")) {
            String[] keyValue = paramPair.split("=");
            if (keyValue.length == 2 && keyValue[0].equals(param)) {
                return keyValue[1]; // Trả về giá trị của tham số
            }
        }
        return null;
    }

    private String getBotResponse(String messageContent) {
        String responseContent = "";
        try (CloseableHttpClient client = HttpClients.createDefault()) {
            HttpPost httpPost = new HttpPost("https://openrouter.ai/api/v1/chat/completions");

            // Set headers
            httpPost.setHeader("Content-Type", "application/json");
            httpPost.setHeader("Authorization", "Bearer " + API_KEY);  // Thay OPENROUTER_API_KEY bằng API key của bạn
            httpPost.setHeader("HTTP-Referer", "http://localhost:9999/HealthyFood");  // URL của trang
            httpPost.setHeader("X-Title", "HealthyFood Application");    // Tên của trang web bạn, nếu muốn (tùy chọn)

            // Create JSON request body
            JSONObject json = new JSONObject();
            json.put("model", "openai/gpt-3.5-turbo");

            JSONArray messages = new JSONArray();
            messages.put(new JSONObject().put("role", "user").put("content", messageContent));
            json.put("messages", messages);

            httpPost.setEntity(new StringEntity(json.toString(), "UTF-8"));

            // Send the request and process response
            try (CloseableHttpResponse response = client.execute(httpPost)) {
                int statusCode = response.getStatusLine().getStatusCode();

                if (statusCode == 200) {
                    String responseBody = EntityUtils.toString(response.getEntity());
                    JSONObject jsonResponse = new JSONObject(responseBody);

                    if (jsonResponse.has("choices") && jsonResponse.getJSONArray("choices").length() > 0) {
                        responseContent = jsonResponse.getJSONArray("choices")
                                .getJSONObject(0)
                                .getJSONObject("message")
                                .getString("content");
                    } else {
                        responseContent = "No response from AI.";
                    }
                } else {
                    responseContent = "Error: " + statusCode;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            responseContent = "Exception: " + e.getMessage();
        }
        return responseContent;
    }

    public static void main(String[] args) {
        ChatEndPoint chatEndpoint = new ChatEndPoint();
        String userMessage = "Now you are an nutritionist";
        String response = chatEndpoint.getBotResponse(userMessage);
        System.out.println(response);
    }

}

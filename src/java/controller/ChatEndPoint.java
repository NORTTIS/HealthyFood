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
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
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
    
    @OnOpen
    public void onOpen(Session session) {
        clients.add(session);
    }
    
    @OnMessage
    public void onMessage(String message, Session session) throws IOException {
        JSONObject jsonMessage = new JSONObject(message);
        int senderId = jsonMessage.getInt("senderId");
        int receiverId = jsonMessage.getInt("receiverId");
        String messageContent = jsonMessage.getString("content");
//       new MessageDao().saveMessage(senderId, receiverId, messageContent);
//        for (Map.Entry<Integer, Session> entry : userSessions.entrySet()) {
//            if(entry.getKey()==1||entry.getKey()==4){
//                entry.getValue().getBasicRemote().sendText(message);
//            }
//            
//        }
        for (Session client : clients) {
            client.getBasicRemote().sendText(message);
        }
    }
    
    @OnClose
    public void onClose(Session session) {
        // Xóa phiên khỏi danh sách khi người dùng đóng kết nối
        clients.remove(session);
        userSessions.values().remove(session); // Xóa session của người dùng tương ứng
    }
    
}

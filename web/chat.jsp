<%-- 
    Document   : chat.jsp
    Created on : Sep 24, 2024, 9:23:40 PM
    Author     : Norttie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Application</title>
</head>
<body>
    <h1>Chat Application</h1>

    <!-- Chat interface -->
    <div id="chatBox"></div>
    <input type="text" id="messageInput" placeholder="Enter your message">
    <button onclick="sendMessage()">Send</button>

    <script>
        // Kết nối WebSocket tới endpoint "/chat"
        const socket = new WebSocket("ws://localhost:9999/HealthyFood/chat");

        // Lắng nghe khi kết nối được mở
        socket.onopen = function(event) {
            console.log("Connected to WebSocket server.");
        };

        // Lắng nghe khi nhận tin nhắn từ server
        socket.onmessage = function(event) {
            const messageData = JSON.parse(event.data);
            displayMessage(messageData.senderId, messageData.content);
        };

        // Lắng nghe khi kết nối bị đóng
        socket.onclose = function(event) {
            console.log("WebSocket connection closed.");
        };

        // Hiển thị tin nhắn trong giao diện chat
        function displayMessage(senderId, messageContent) {
            const chatBox = document.getElementById("chatBox");
            const messageElement = document.createElement("p");
            messageElement.textContent = "User " + senderId + ": " + messageContent;
            chatBox.appendChild(messageElement);
        }

        // Gửi tin nhắn đến server qua WebSocket
        function sendMessage() {
            const messageInput = document.getElementById("messageInput");
            const messageContent = messageInput.value;

            // Dữ liệu gửi lên server dưới dạng JSON
            const messageData = {
                senderId: 1, // Đặt ID của người gửi
                receiverId: 5, // Đặt ID của người nhận
                content: messageContent
            };

            // Gửi tin nhắn đến server
            socket.send(JSON.stringify(messageData));

            // Xóa nội dung tin nhắn sau khi gửi
            messageInput.value = "";
        }
    </script>
</body>
</html>

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
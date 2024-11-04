<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Calendar" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ứng dụng Chat</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Cairo:400,600,700&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400i,700i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu&amp;display=swap" rel="stylesheet">
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/slick.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/main-color03-green.css">
        <link rel="stylesheet" href="assets/css/nutriMenu.css">
        <style>
            .chat-messages {
                height: 500px;
                padding: 1rem;
                padding-bottom: 60px;
                overflow-y: auto;
            }
            .contact-list {
                overflow-y: auto;
            }
        </style>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/list.js/2.3.1/list.min.js"></script>
    </head>
    <body>
        <!-- Preloader loading-->
        <div id="biof-loading">
            <div class="biof-loading-center">
                <div class="biof-loading-center-absolute">
                    <div class="dot dot-one"></div>
                    <div class="dot dot-two"></div>
                    <div class="dot dot-three"></div>
                </div>
            </div>
        </div>
        <jsp:include page="./jsptemplate/header.jsp" />


        <div class="container" style="padding: 20px">
            <div class="row">
                <!-- Sidebar -->
                <div id="contact-list" class="col-md-4 col-lg-3 p-3 bg-light border-end" style="min-height: 500px;     border-top-left-radius: 20px;
                     border-bottom-left-radius: 20px;">
                    <h2 class="h4 mb-4">Chats</h2>
                    <div class="mb-3">
                        <input class="search" type="text" class="form-control" placeholder="Search for contact...">
                    </div>
                    <div class="contact-list">
                        <ul class="list" style="list-style: none;    max-height: 380px;">
                            <c:forEach items="${lacc}" var="i">
                                <li>
                                    <a href="chat?accId=${i.account_id}" style="color:initial">
                                        <div class="d-flex align-items-center p-2 border-bottom">
                                            <img src="./assets/image/${i.avatar==null ? 'Avatar.png' : i.avatar}" alt="Current Contact" class="rounded-circle me-3" style="width: 35px; height: 35px">
                                            <div class="flex-grow-1">
                                                <h6 class="mb-0 displayname">${i.displayname}</h6>
                                                <small class="text-muted">lastMessage</small>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                            </c:forEach>
                              
                            <li>
                                <a href="chat?accId=-1" style="color:initial">
                                    <div class="d-flex align-items-center p-2 border-bottom">
                                        <img src="./assets/image/OIP.jpg" alt="name" class="rounded-circle me-3" width="35" height="35" style="    min-width: 35px;
                                             min-height: 35px;">
                                        <div class="flex-grow-1">
                                            <h6 class="mb-0 displayname">Chat Ai</h6>
                                        </div>
                                    </div>
                                </a>
                            </li>

                        </ul>





                        <!-- bg-secondary  rounded-circle-->
                    </div>
                </div>

                <!-- Main Chat Area -->
                <div class="col-md-8 col-lg-9 " style="
                     padding-right: 20px;
                     background-color: #f8f9fa;
                     border-top-right-radius: 20px;
                     ">
                    <!-- Chat Header -->

                    <div class="p-3 bg-light " style="border-top-right-radius: 20px">
                        <div class="d-flex align-items-center">
                            <img src="./assets/image/${(accN.avatar==null&&accN.displayname==null ) ? 'OIP.jpg' : accN.avatar}" alt="Current Contact" class="rounded-circle me-3" style="width: 35px; height: 35px">
                            <div>
                                <h5 class="mb-0">${accN.displayname==null ? 'Chat AI' : accN.displayname}</h5>
                            </div>

                        </div>
                    </div>

                    <!-- Chat Messages -->
                    <div class="chat-messages " id="chatBox" style="    background-color: #fff;
                         border-radius: 20px;">
                        <!--loop here-->
                        <c:forEach items="${listMes}" var="i" >
                            <c:if test="${i.sender_id == sessionScope.acc.account_id}">
                                <div class="d-flex mb-3 justify-content-end" >
                                    <div class=" text-white  rounded p-2" style="max-width: 70%; background-color:#7faf51;">
                                        <p class="mb-0">${i.message}</p>
                                        <small class="text-xs mt-1" style="opacity: 0.7">${i.time}</small>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${i.sender_id != sessionScope.acc.account_id}">
                                <div class="d-flex mb-3" >
                                    <div class=" bg-light rounded p-2" style="max-width: 70%;">
                                        <p class="mb-0">${i.message}</p>
                                        <small class="text-muted">${i.time}</small>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>

                    <!-- Message Input -->
                    <div class="p-3 bg-light border-top" style="
                         position: absolute;
                         bottom: 0;
                         right: 0;
                         left: 0;
                         ">
                        <div class="d-flex">
                            <input type="text" class="form-control me-2" id="messageInput" placeholder="Enter your messages">
                            <button onclick="sendMessage()" class="btn btn-default"><i class="bi bi-send"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="./jsptemplate/footer.jsp" />
        <script src="assets/js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.countdown.min.js"></script>
        <script src="assets/js/jquery.nice-select.min.js"></script>
        <script src="assets/js/jquery.nicescroll.min.js"></script>
        <script src="assets/js/slick.min.js"></script>
        <script src="assets/js/biolife.framework.js"></script>
        <script src="assets/js/functions.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script>
                                // Kết nối WebSocket tới endpoint "/chat"
                                const socket = new WebSocket("ws://localhost:9999/HealthyFood/chat?userId=${sessionScope.acc.account_id}");

                                // Lắng nghe khi kết nối được mở
                                socket.onopen = function (event) {
                                    console.log("Connected to WebSocket server.");
                                };

                                // Lắng nghe khi nhận tin nhắn từ server
                                socket.onmessage = function (event) {
                                    const messageData = JSON.parse(event.data);
                                    displayMessage(messageData.senderId, messageData.content, messageData.mestime);
                                };

                                // Lắng nghe khi kết nối bị đóng
                                socket.onclose = function (event) {
                                    console.log("WebSocket connection closed.");
                                };

                                // Hiển thị tin nhắn trong giao diện chat
//                              function displayMessage(senderId, messageContent) {
//                                  const chatBox = document.getElementById("chatBox");
//                                  const messageElement = document.createElement("p");
//                                  messageElement.textContent = "User " + senderId + ": " + messageContent;
//                                  chatBox.appendChild(messageElement);
//                              }
                                function displayMessage(senderId, messageContent, mestime) {
                                    const chatBox = document.getElementById("chatBox");
                                    let  isSender = ${sessionScope.acc.account_id} == senderId;
                                    // Tạo phần tử div chứa tin nhắn
                                    const messageWrapper = document.createElement("div");
                                    messageWrapper.classList.add("d-flex", "mb-3");

                                    // Nếu là người gửi, căn phải và đổi màu nền
                                    if (isSender) {
                                        messageWrapper.classList.add("justify-content-end");
                                    }

                                    // Tạo phần tử div chứa nội dung tin nhắn
                                    const messageContainer = document.createElement("div");
                                    messageContainer.classList.add("rounded", "p-2");
                                    messageContainer.style.maxWidth = "70%";
                                    messageContainer.style.backgroundColor = "#7faf51";

                                    // Nếu là người gửi, thêm màu nền và text tương ứng
                                    if (isSender) {
                                        messageContainer.classList.add( "text-white");
                                    } else {
                                        messageContainer.classList.add("bg-light");
                                    }

                                    // Tạo phần tử <p> cho nội dung tin nhắn
                                    const messageElement = document.createElement("p");
                                    messageElement.classList.add("mb-0");
                                    messageElement.textContent = messageContent;

                                    // Tạo phần tử <small> cho thời gian
                                    const timeElement = document.createElement("small");
                                    timeElement.classList.add("mt-1");
                                    timeElement.style.opacity = "0.7";

                                    timeElement.textContent = mestime;
                                    // Thêm tin nhắn và thời gian vào container
                                    messageContainer.appendChild(messageElement);
                                    messageContainer.appendChild(timeElement);

                                    // Thêm container vào wrapper
                                    messageWrapper.appendChild(messageContainer);

                                    // Thêm wrapper vào chatBox
                                    chatBox.appendChild(messageWrapper);
                                    chatBox.scrollTop = chatBox.scrollHeight;
                                }

                                // Gửi tin nhắn đến server qua WebSocket
                                function sendMessage() {
                                    const messageInput = document.getElementById("messageInput");
                                    const messageContent = messageInput.value;

                                    // Dữ liệu gửi lên server dưới dạng JSON
                                    const messageData = {
                                        senderId: ${sessionScope.acc.account_id}, // Đặt ID của người gửi 
                                        receiverId: ${receiveId}, // Đặt ID của người nhận
                                        content: messageContent
                                    };

                                    // Gửi tin nhắn đến server
                                    socket.send(JSON.stringify(messageData));

                                    // Xóa nội dung tin nhắn sau khi gửi
                                    messageInput.value = "";
                                }

                                // Initialize List.js for searching functionality
                                var options = {
                                    valueNames: ['displayname'] // This should match the class used in <h6> for names
                                };

                                var contactList = new List('contact-list', options);
        </script>
    </body>
</html>
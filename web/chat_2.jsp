<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ứng dụng Chat</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
        <style>
            .chat-messages {
                height: calc(100vh - 155px);
                overflow-y: auto;
            }
            .contact-list {
                height: calc(100vh - 120px);
                overflow-y: auto;
            }
        </style>
    </head>
    <body>



        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <div class="col-md-4 col-lg-3 p-3 bg-light border-end">
                    <h2 class="h4 mb-4">Chats</h2>
                    <div class="mb-3">
                        <input type="text" class="form-control" placeholder="Tìm kiếm liên hệ...">
                    </div>
                    <div class="contact-list">

                        <div class="d-flex align-items-center p-2 border-bottom">
                            <img src="" alt="name" class="rounded-circle me-3" width="48" height="48">
                            <div class="flex-grow-1">
                                <h6 class="mb-0">name</h6>
                                <small class="text-muted">lastMessage</small>
                            </div>
                            <div class=" bg-success rounded-circle  " style="width: 10px; height: 10px;"></div>
                        </div>
                        <!-- bg-secondary  rounded-circle-->
                    </div>
                </div>

                <!-- Main Chat Area -->
                <div class="col-md-8 col-lg-9 p-0">
                    <!-- Chat Header -->
                    <div class="p-3 bg-light border-bottom">
                        <div class="d-flex align-items-center">
                            <img src="/placeholder.svg?height=48&width=48" alt="Current Contact" class="rounded-circle me-3" width="48" height="48">
                            <div>
                                <h5 class="mb-0">Alice Smith</h5>
                                <small class="text-muted">Online</small>
                            </div>
                            <div class="ms-auto">
                                <button class="btn btn-outline-secondary me-2"><i class="bi bi-telephone"></i></button>
                                <button class="btn btn-outline-secondary"><i class="bi bi-camera-video"></i></button>
                            </div>
                        </div>
                    </div>

                    <!-- Chat Messages -->
                    <div class="chat-messages p-3">
                        <!--loop here-->
                        
                        <div class="d-flex mb-3 justify-content-end" >
                            <div class=" bg-primary text-white  rounded p-2" style="max-width: 70%;">
                                <p class="mb-0">message 2</p>
                                <small class="text-xs mt-1" style="opacity: 0.7">18:00 p.m</small>
                            </div>
                        </div>
                        <div class="d-flex mb-3" >
                            <div class=" bg-light rounded p-2" style="max-width: 70%;">
                                <p class="mb-0">message 2</p>
                                <small class="text-muted">18:00 p.m</small>
                            </div>
                        </div>
                    </div>

                    <!-- Message Input -->
                    <div class="p-3 bg-light border-top">
                        <form class="d-flex">
                            <input type="text" class="form-control me-2" placeholder="Nhập tin nhắn...">
                            <button type="submit" class="btn btn-primary"><i class="bi bi-send"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
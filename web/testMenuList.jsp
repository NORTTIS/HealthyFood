<%-- 
    Document   : testMenuList
    Created on : Oct 18, 2024, 11:45:46 AM
    Author     : Minh
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /* Thiết lập CSS cho các nút accordion */
            .accordion {
                background-color: #f1f1f1;
                color: #444;
                cursor: pointer;
                padding: 18px;
                width: 100%;
                border: none;
                text-align: left;
                outline: none;
                font-size: 30px;
                transition: 0.4s;
            }

            /* Thêm màu cho nút khi nó được mở */
            .active, .accordion:hover {
                background-color: #ccc;
            }

            /* Ẩn nội dung mặc định */
            .panel {
                font-size: 30px;
                padding: 0 18px;
                display: none;
                background-color: white;
                overflow: hidden;
            }
        </style>
    </head>
    <body>
        <h2>Accordion Example</h2>

        <!-- Nút accordion đầu tiên -->
        <button class="accordion">Section 1</button>
        <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus.</p>
        </div>

        <!-- Nút accordion thứ hai -->
        <button class="accordion">Section 2</button>
        <div class="panel">
            <button class="accordion">Section 2</button>
            <div class="panel">
                <p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
            </div>
        </div>

        <!-- Nút accordion thứ ba -->
        <button class="accordion">Section 3</button>
        <div class="panel">
            <p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
        </div>
        <c:forEach var="m" items="${menuList}">
            <button class="accordion">Menu for ${m.key}</button>
            <div class="panel">
                <c:forEach var="nameEntry" items="${m.value}">
                    <button class="accordion">Name: ${nameEntry.key}</button>
                    <div class="panel">
                        <c:forEach var="menu" items="${nameEntry.value}">
                            <div>${menu.menu_name} - ${menu.getAverage_calories()}</div>
                        </c:forEach>
                    </div>
                </c:forEach>
            </div>
        </c:forEach>

    </body>
    <script>
        // Lấy tất cả các phần tử có class "accordion"
        var acc = document.getElementsByClassName("accordion");

        // Lặp qua từng accordion để gán sự kiện click
        for (var i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function () {
                // Toggle giữa việc thêm và bỏ class "active"
                this.classList.toggle("active");

                // Lấy phần tử panel kế tiếp và điều khiển việc hiện/ẩn
                var panel = this.nextElementSibling;
                if (panel.style.display === "block") {
                    panel.style.display = "none";
                } else {
                    panel.style.display = "block";
                }
            });
        }
    </script>
</html>

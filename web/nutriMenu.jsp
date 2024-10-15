<%-- 
    Document   : nutriMenu
    Created on : Oct 7, 2024, 9:06:06 PM
    Author     : Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
                font-size: 15px;
                transition: 0.4s;
            }

            /* Thêm màu cho nút khi nó được mở */
            .active, .accordion:hover {
                background-color: #ccc;
            }

            /* Ẩn nội dung mặc định */
            .panel {
                padding: 0 18px;
                display: none;
                background-color: white;
                overflow: hidden;
            }
        </style>
    </head>
    <body>
        tét thử tiếng việt vào đây 
        <h2>Create a Dynamic Form</h2>
        <form action="submitForm" method="POST">
            <div id="questions">
                <!-- Các câu hỏi động sẽ được thêm vào đây -->
            </div>

            <button type="button" onclick="addQuestion()">Add Question</button>
            <button type="button" onclick="removeQuestion()">Remove Last Question</button><br><br>

            <input type="submit" value="Submit">
        </form>
        <h2>Accordion Example</h2>

        <!-- Nút accordion đầu tiên -->
        <button class="accordion">Section 1</button>
        <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus.</p>
        </div>

        <!-- Nút accordion thứ hai -->
        <button class="accordion">Section 2</button>
        <div class="panel">
            <p>Vestibulum at eros eu orci cursus pellentesque. Nam porttitor.</p>
        </div>

        <!-- Nút accordion thứ ba -->
        <button class="accordion">Section 3</button>
        <div class="panel">
            <p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
        </div>

    </body>
    <script>
        let questionCount = 0;

        function addQuestion() {
            questionCount++;
            const questionsDiv = document.getElementById('questions');

            // Tạo một div cho mỗi câu hỏi
            const questionDiv = document.createElement('div');
            questionDiv.id = `question_${questionCount}`;

            // Tạo label và input cho câu hỏi
            questionDiv.innerHTML = `
            <label for="question_${questionCount}">Question ${questionCount}:</label><br>   
            <input type="text" name="question_${questionCount}" id="question_${questionCount}" required><br><br>
        `;
            questionsDiv.appendChild(questionDiv);
        }

        function removeQuestion() {
            if (questionCount > 0) {
                const questionsDiv = document.getElementById('questions');
                const lastQuestion = document.getElementById(`question_${questionCount}`);
                questionsDiv.removeChild(lastQuestion);
                questionCount--;
            }
        }
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

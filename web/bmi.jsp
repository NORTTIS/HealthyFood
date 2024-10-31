<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>BMI Calculator</title>
        <link rel="stylesheet" href="./assets/css/styleBMI.css" />
        <style>
            @import url("https://fonts.googleapis.com/css2?family=Jost:wght@400;500;600&display=swap");

            body {
                font-family: 'Jost', sans-serif;
            }
        </style>
        <script>
            <c:if test="${sessionScope.bmiR==null}">
                window.onload = function () {
                alert("Chào bạn! Hãy cho chúng tôi biết thêm về bạn để giúp bạn tính chỉ số BMI một cách chính xác hơn.");
            };
            </c:if>
            
        </script>
    </head>
    <body>
        <div class="container">
            <h1>Máy Tính BMI</h1>
            <form id="formBmi" class="calculator" action="bmical" method="post">
                
                <div>
                    <label for="height">Chiều cao (cm)</label>
                    <input
                        type="number"
                        id="height"
                        name="height"
                        min="0"
                        step="any"
                        value="0"
                        inputmode="decimal"
                        required="true"
                        onfocus="if (this.value === '0')
                                    this.value = ''"
                        />
                </div>

                <div>
                    <label for="weight">Cân nặng (kg)</label>
                    <input
                        type="number"
                        id="weight"
                        name="weight"
                        min="0"
                        step="any"
                        value="0"
                        inputmode="decimal"
                        required="true"
                        onfocus="if (this.value === '0')
                                    this.value = ''"
                        />
                </div>
                
                <div>
                    <button type="reset">Đặt lại</button>
                    <button type="submit">Tính toán</button>
                </div>
            </form>

            <section class="output">
                <h3>Chỉ số BMI của bạn là</h3>
                <p id="bmi">${sessionScope.bmiR!=null?bmiR:0}</p>
            </section>

            <section class="bmi-scale">
                <div style="--color: var(--underweight)">
                    <h4>Gầy</h4>
                    <p>&lt; 18.5</p>
                </div>

                <div style="--color: var(--normal)">
                    <h4>Bình thường</h4>
                    <p>18.5 – 25</p>
                </div>

                <div style="--color: var(--overweight)">
                    <h4>Thừa cân</h4>
                    <p>25 – 30</p>
                </div>

                <div style="--color: var(--obese)">
                    <h4>Béo phì</h4>
                    <p>&ge; 30</p>
                </div>
            </section>
            <div id="promotionMessage" style=" margin-top: 20px;">
                <c:if test="${sessionScope.bmiR!=null && (sessionScope.bmiR.equals('')) && sessionScope.bmiR != 'NaN' }">
                    <button id="homeBtn" onclick="redirectToHome()">Tính toán BMI xong rồi! Hãy ghé thăm cửa hàng của chúng tôi để tìm ra những sản phẩm phù hợp giúp bạn đạt được mục tiêu sức khỏe của mình.</button>
                </c:if>
            </div>
        </div>

        <script>
            const formBmi = document.getElementById("formBmi");
            const bmiText = document.getElementById("bmi");
            const descText = document.getElementById("desc");
            const promotionMessage = document.getElementById("promotionMessage");

            formBmi.addEventListener("reset", handleReset);

            function handleReset() {
                bmiText.textContent = 0;
                bmiText.className = "";
                descText.textContent = "N/A";
                promotionMessage.style.display = "none"; // Ẩn thông điệp
            }

          


            function redirectToHome() {
                window.location.href = 'home'; // Chuyển hướng về trang chính
            }


        </script>

    </body>
</html>

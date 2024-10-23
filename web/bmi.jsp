<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>BMI Calculator</title>
    <link rel="stylesheet" href="assets/style.css" />
    <link rel="stylesheet" href="/assets/css/styleBMI.css" />
    <script src="assets/js/script.js" defer></script>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Jost:wght@400;500;600&display=swap");

        body {
            font-family: 'Jost', sans-serif;
        }
    </style>
    <script>
        window.onload = function () {
            alert("Chào bạn! Hãy cho chúng tôi biết thêm về bạn để giúp bạn tính chỉ số BMI một cách chính xác hơn.");
        };
    </script>
</head>
<body>
    <div class="container">
        <h1>Máy Tính BMI</h1>

        <form class="calculator" action="bmi" method="post">
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
                    onfocus="if (this.value === '0') this.value = ''"
                />
            </div>

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
                    onfocus="if (this.value === '0') this.value = ''"
                />
            </div>

            <div>
                <button type="reset">Đặt lại</button>
                <button type="submit">Tính toán</button>
            </div>
        </form>

        <section class="output">
            <h3>Chỉ số BMI của bạn là</h3>
            <p id="bmi"><%= request.getAttribute("bmiResult") != null ? request.getAttribute("bmiResult") : "0" %></p>
            <p id="desc"><%= request.getAttribute("bmiDesc") != null ? request.getAttribute("bmiDesc") : "N/A" %></p>
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
    </div>
</body>
</html>

const homeBtn = document.getElementById("homeBtn"); // Lấy nút "Quay về trang chủ"

form.addEventListener("submit", handleSubmit);
form.addEventListener("reset", handleReset);
homeBtn.addEventListener("click", redirectToHome); // Thêm sự kiện click cho nút

function handleReset() {
    bmiText.textContent = 0;
    bmiText.className = "";
    descText.textContent = "N/A";
    homeBtn.style.display = "none"; // Ẩn nút khi người dùng đặt lại form
}

function handleSubmit(e) {
    e.preventDefault();

    const weight = parseFloat(form.weight.value);
    const height = parseFloat(form.height.value);

    if (isNaN(weight) || isNaN(height) || weight <= 0 || height <= 0) {
        alert("Vui lòng nhập cân nặng và chiều cao hợp lệ");
        return;
    }

    const heightInMeters = height / 100; // cm -> m
    const bmi = weight / Math.pow(heightInMeters, 2);
    const desc = interpretBMI(bmi);

    bmiText.textContent = bmi.toFixed(2);
    bmiText.className = desc;
    descText.innerHTML = `Bạn đang ở trạng thái <strong>${desc}</strong>`;

    // Hiển thị nút "Quay về trang chủ" sau khi tính toán BMI
    homeBtn.style.display = "inline-block"; // Hiển thị nút sau khi có kết quả BMI
}

function interpretBMI(bmi) {
    if (bmi < 18.5) {
        return "Gầy";
    } else if (bmi < 25) {
        return "Bình thường";
    } else if (bmi < 30) {
        return "Thừa cân";
    } else {
        return "Béo phì";
    }
}

function redirectToHome() {
    // Chuyển hướng về trang "home"
    window.location.href = "/home"; // URL của trang chủ
}

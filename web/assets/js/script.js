const bmiText = document.getElementById("bmi");
const descText = document.getElementById("desc");
const form = document.querySelector("form");

form.addEventListener("submit", handleSubmit);
form.addEventListener("reset", handleReset);

function handleReset() {
    bmiText.textContent = 0;
    bmiText.className = "";
    descText.textContent = "N/A";
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

/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

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


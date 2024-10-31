<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Nutritionist</title>
        <link rel="stylesheet" type="text/css" href="./assets/css/adminpage.css">
    </head>
    <body>
        <form action="createM" method="post">
            <h2>Create Nutritionist</h2>
            <table>
                <tr>
                    <td><label>Username</label></td>
                    <td><input class="input_type" type="text" name="username" required></td>
                </tr>
                <tr>
                    <td><label>Email</label></td>
                    <td><input class="input_type" id="email" type="email" name="email" required oninput="checkEmail()">
                        <div id="emailError"  style="display:none; color: red">Invalid email format.</div>
                    </td>
                </tr>
                <tr>
                    <td><label>Phone Number</label></td>
                    <td><input class="input_type" id="mobile" type="text" name="phone_number" required oninput="checkPhoneNumber()">
                        <div id="phoneError" class="" style="display:none; color: red">Invalid phone number format.</div>
                    </td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><input class="input_type" type="password" name="password" required></td>
                </tr>

                <tr>
                    <td><label>Display Name</label></td>
                    <td><input class="input_type" type="text" name="displayname" required></td>
                </tr>
                <tr>
                    <td><label>Address</label></td>
                    <td><input class="input_type" type="text" name="address"></td>
                </tr>
                <tr>
                    <td><label>Description</label></td>
                    <td><textarea class="input_type" name="description"></textarea></td>
                </tr>
                <tr>
                    <td><label>Avatar</label></td>
                    <td><input class="input_type" type="file" name="avatar" accept="image/*"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="hidden" name="role" value="Nutritionist">
                        <input type="hidden" name="status" value="Active">
                        <div class="save_button primary_btn default_button" style="text-align: center;">
                            <button type="submit">Create</button>
                        </div>
                    </td>
                </tr>
            </table>
        </form>
        <script>
            function validateEmail(email) {
                const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return emailPattern.test(email);
            }

            function isVietnamesePhoneNumber(number) {
                const phonePattern = /^(03|05|07|08|09|01[2|6|8|9])[0-9]{8}$/;
                return phonePattern.test(number);
            }

            function checkEmail() {
                const email = document.getElementById("email").value;
                const emailError = document.getElementById("emailError");

                if (validateEmail(email)) {
                    emailError.style.display = "none"; // Ẩn thông báo lỗi
                } else {
                    emailError.style.display = "block"; // Hiện thông báo lỗi
                }
            }

            function checkPhoneNumber() {
                const mobile = document.getElementById("mobile").value;
                const phoneError = document.getElementById("phoneError");

                if (isVietnamesePhoneNumber(mobile)) {
                    phoneError.style.display = "none"; // Ẩn thông báo lỗi
                } else {
                    phoneError.style.display = "block"; // Hiện thông báo lỗi
                }
            }

            function validateForm() {
                const email = document.getElementById("email").value;
                const mobile = document.getElementById("mobile").value;

                // Kiểm tra email
                if (!validateEmail(email)) {
                    alert("Invalid email format. Please enter a valid email address.");
                    return false; // Ngăn chặn form gửi đi
                }

                // Kiểm tra số điện thoại
                if (!isVietnamesePhoneNumber(mobile)) {
                    alert("Invalid phone number format. Please enter a valid phone number (e.g., 0123456789).");
                    return false; // Ngăn chặn form gửi đi
                }

                return true; // Cho phép gửi form
            }
        </script>
    </body>
</html>

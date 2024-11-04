<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Profile</title>
    <link rel="stylesheet" type="text/css" href="./assets/css/updateprofile.css">
</head>
<body>
    <h1>Edit User Profile</h1>
    <c:if test="${not empty error}">
        <p style="color:red">${error}</p>
    </c:if>
 <!---->
    <form action="edit" method="post" enctype="multipart/form-data"  onsubmit="return validateForm()">
        <input type="hidden" name="accountId" value="${user.account_id}" />
        <input type="hidden" name="oldusername" value="${user.username}" />
        <input type="hidden" name="oldemail" value="${user.email}" />

        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="${user.username}" required />
        <br />
       
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${user.email}" oninput="checkEmail()" required />
        <div id="emailError" style="display:none; color: red">Invalid email format.</div>
        <br />

        <label for="displayname">Display Name:</label>
        <input type="text" id="displayname" name="displayname" value="${user.displayname}" required />
        <br />

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" value="${user.address}" />
        <br />

        <label for="description">Description:</label>
        <textarea id="description" name="description">${user.description}</textarea>
        <br />

        <label for="phone_number">Phone Number:</label>
        <input type="text" id="mobile" name="phone_number" value="${user.phone_number}" oninput="checkPhoneNumber()" required />
        <div id="phoneError" style="display:none; color: red">Invalid phone number format.</div>
        <br />

        <label for="file">Avatar:</label>
        <input class="input_type" type="file" name="file" accept="image/*" />
        <br />

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" value="${user.password}" required />
        <br />

        <input type="submit" value="Update Profile" />
    </form>

    <br />
    <div class="button-container">
        <a href="detail?username=${user.username}">Back</a>
    </div>

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

            emailError.style.display = validateEmail(email) ? "none" : "block";
        }

        function checkPhoneNumber() {
            const mobile = document.getElementById("mobile").value;
            const phoneError = document.getElementById("phoneError");

            phoneError.style.display = isVietnamesePhoneNumber(mobile) ? "none" : "block";
        }

        function validateForm() {
            const email = document.getElementById("email").value;
            const mobile = document.getElementById("mobile").value;

            if (!validateEmail(email)) {
                alert("Invalid email format. Please enter a valid email address.");
                return false; // Prevent form submission
            }

            if (!isVietnamesePhoneNumber(mobile)) {
                alert("Invalid phone number format. Please enter a valid phone number (e.g., 0123456789).");
                return false; // Prevent form submission
            }

            return true; // Allow form submission
        }
    </script>
</body>
</html>

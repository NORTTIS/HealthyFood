<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Details</title>
    <link rel="stylesheet" type="text/css" href="./assets/css/detail.css">
    <style>
        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 30px;
            gap: 20px;
            flex-direction: row;
        }
    </style>
</head>
<body>
    <c:set var="user" value="${requestScope.user}"/>
    <h2>User Details</h2>
    <table>
        <tr>
            <td><strong>Username:</strong></td>
            <td>${user.username}</td>
        </tr>
        <tr>
            <td><strong>Password:</strong></td>
            <td>${user.password}</td>
        </tr>
        <tr>
            <td><strong>Display Name:</strong></td>
            <td>${user.displayname}</td>
        </tr>
        <tr>
            <td><strong>Address:</strong></td>
            <td>${user.address}</td>
        </tr>
        <tr>
            <td><strong>Description:</strong></td>
            <td>${user.description}</td>
        </tr>
        <tr>
            <td><strong>Email:</strong></td>
            <td>${user.email}</td>
        </tr>
        <tr>
            <td><strong>Phone Number:</strong></td>
            <td>${user.phone_number}</td>
        </tr>
        <tr>
            <td><strong>Role:</strong></td>
            <td>${user.role}</td>
        </tr>
        <tr>
            <td><strong>Status:</strong></td>
            <td>${user.status}</td>
        </tr>
        <tr>
            <td><strong>Avatar:</strong></td>
            <td><img src="${user.avatar}" alt="User Avatar" style="width:100px; height:100px;"/></td>
        </tr>
    </table>
    <div class="button-container">
        <a href="edit?username=${user.username}" class="edit-button">Edit Profile</a>
        <a href="userlist" class="back-button">Back to User List</a>
    </div>
</body>
</html>

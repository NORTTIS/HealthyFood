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
        <form action="edit" method="post">
            <input type="hidden" name="accountId" value="${user.account_id}" />
            <input type="hidden" name="oldusername" value="${user.username}" />
            <input type="hidden" name="oldemail" value="${user.email}" />
            
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="${user.username}" />
            <br />

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${user.email}" />
            <br />

            <label for="displayname">Display Name:</label>
            <input type="text" id="displayname" name="displayname" value="${user.displayname}" />
            <br />

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="${user.address}" />
            <br />

            <label for="description">Description:</label>
            <textarea id="description" name="description">${user.description}</textarea>
            <br />

            <label for="phone_number">Phone Number:</label>
            <input type="text" id="phone_number" name="phone_number" value="${user.phone_number}" />
            <br />

            <label for="avatar">Avatar:</label>
            <input class="input_type" type="file" name="avatar" accept="image/*">
            <br />

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" value="${user.password}"  />
            <br />

            <input type="submit" value="Update Profile" />
        </form>

        <br />
        <div class="button-container">
            <a href="detail?username=${user.username}">Back</a>
        </div>
    </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="e" value="${requestScope.user}"/>
        <form id="form" action="edit" method="post">
            <label>Username</label>
            <input class="input_type" type="text" name="username" placeholder="${e.getUsername()}">
            <input class="input_type" type="text" name="oldusername" value="${e.getUsername()}" hidden>
            <label>Email</label>
            <input class="input_type" type="text" name="email" placeholder="${e.getEmail()}">

            <label>Phone Number</label>
            <input class="input_type" type="text" name="phone_number" placeholder="${e.getPhone_number()}">

            <label>Password</label>
            <input class="input_type" type="text" name="password" placeholder="${e.getPassword()}">
            <div>
                ${requestScope.error}
            </div>
            <div class="save_button primary_btn default_button">
                <button type="submit">Edit</button>
            </div>
        </form>
    </body>
</html>


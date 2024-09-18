<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <c:forEach items="${requestScope.data}" var = "e">
        <tr>
            <td>${e.getUsername()}</td>
            <td>${e.getPassword()}</td>
            <td>${e.getEmail()}</td>
            <td>${e.getPhone_number()}</td>
            <td>${e.getStatus()}</td>
    </c:forEach>
</body>
</html>

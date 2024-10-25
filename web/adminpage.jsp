<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="./assets/css/adminpage.css">
    </head>
    <body>
        <div class="container">
            <div class="left-panel">
                <a href="discountlist" class="button">Discount</a> 
                <a href="createM" class="button">Create Manager</a>
            </div>
            <div class="right-panel">
                <table>
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Email</th>
                            <th>Phone Number</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.data}" var="e">
                            <tr>
                                <td>${e.getUsername()}</td>
                                <td>${e.getPassword()}</td>
                                <td>${e.getEmail()}</td>
                                <td>${e.getPhone_number()}</td>
                                <td>${e.getStatus()}</td>
                                <td>
                                    <form action="change" method="get">
                                        <input type="text" name="username" value="${e.getUsername()}" hidden/>
                                        <input type="text" name="status" value="${e.getStatus()}" hidden/>
                                        <input type="submit" value="Thay Đổi"/>
                                    </form>
                                    <form action="edit" method="get">
                                        <input type="text" name="username" value="${e.getUsername()}" hidden/>
                                        <input type="submit" value="Cập nhật"/>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
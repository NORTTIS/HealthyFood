<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Manager List</title>
        <link rel="stylesheet" type="text/css" href="./assets/css/managerlist.css">
    </head>
    <body>
        <h1>Manager List</h1>
        <table>
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Role</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="e" items="${managerData}">
                <tr>
                    <td>${e.getUsername()}</td>
                    <td>${e.getPassword()}</td>
                    <td>${e.getEmail()}</td>
                    <td>${e.getPhone_number()}</td>
                    <td>${e.getRole()}</td>
                    <td>${e.getStatus()}</td>
                    <td>
                        <form action="change" method="get" style="display: inline;">
                            <input type="hidden" name="username" value="${e.getUsername()}"/>
                            <input type="hidden" name="status" value="${e.getStatus()}"/>
                            <input type="hidden" name="page" value="managerList"/>
                            <input type="submit" value="Change"/>
                        </form>
                    </td>
                    <td>
                        <form action="detail" method="get" style="display: inline;">
                            <input type="hidden" name="username" value="${e.getUsername()}"/>
                            <input type="submit" value="Detail"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div>
            <a href="userlist">Back to User List</a>
        </div>
    </body>
</html>

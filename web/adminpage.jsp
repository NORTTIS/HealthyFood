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
                <a href="createM" class="button">Create Manager</a>
                <a href="createNutritionist" class="button">Create Nutritionist</a>
                <a href="ManagerList" class="button">Manager List</a>
                <a href="NutritionistList" class="button">Nutritionist List</a>
                <a href="userlist" class="button">Reset</a>
                <a href="Revenue" class="button">Monthly Revenue</a>
            </div>
            <div class="right-panel">

                <form action="search" method="get">
                    <label for="status">Status:</label>
                    <select name="status" id="status">
                        <option value="active">Active</option>
                        <option value="inactive">Inactive</option>
                    </select>

                    <label for="username">Username:</label>
                    <input type="text" name="username" id="username" placeholder="Enter username (optional)"/>

                    <button type="submit">Search</button>
                </form>



                <table>
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Email</th>
                            <th>Phone Number</th>
                            <th>Role</th>
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
                                <td>${e.getRole()}</td>
                                <td>${e.getStatus()}</td>
                                <td class="actions">
                                    <form action="change" method="get" class="action-form">
                                        <input type="hidden" name="username" value="${e.getUsername()}"/>
                                        <input type="hidden" name="status" value="${e.getStatus()}"/> 
                                        <input type="submit" value="Change" class="action-button"/>
                                    </form>
                                    <form action="detail" method="get" class="action-form">
                                        <input type="hidden" name="username" value="${e.getUsername()}"/>
                                        <input type="submit" value="Detail" class="action-button"/>
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

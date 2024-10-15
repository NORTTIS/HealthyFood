<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="./assets/css/createmanager.css">
    </head>
    <body>
        <form action="createM" method="post">
            <h2>Create Manager</h2>
            <table>
                <tr>
                    <td><label>Username</label></td>
                    <td><input class="input_type" type="text" name="username" required></td>
                </tr>
                <tr>
                    <td><label>Email</label></td>
                    <td><input class="input_type" type="email" name="email" required></td>
                </tr>
                <tr>
                    <td><label>Phone Number</label></td>
                    <td><input class="input_type" type="text" name="phone_number" required></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><input class="input_type" type="password" name="password" required></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="hidden" name="role" value="Manager">
                        <input type="hidden" name="status" value="Active">
                        <div class="save_button primary_btn default_button" style="text-align: center;">
                            <button type="submit">Create</button>
                        </div>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

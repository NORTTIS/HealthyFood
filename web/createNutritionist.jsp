<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Manager</title>
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
    </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@page
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>JSP Page</title>
        <link
            rel="stylesheet"
            type="text/css"
            href="./assets/css/editprofile.css"
        />
    </head>
    <body>
        <c:set var="e" value="${requestScope.user}" />
        <form id="form" action="edit" method="post">
            <h2>Edit User Information</h2>
            <table>
                <tr>
                    <td><label>Username</label></td>
                    <td>
                        <input
                            class="input_type"
                            type="text"
                            name="username"
                            placeholder="${e.getUsername()}"
                        />
                        <input
                            class="input_type"
                            type="hidden"
                            name="oldusername"
                            value="${e.getUsername()}"
                        />
                    </td>
                </tr>
                <tr>
                    <td><label>Email</label></td>
                    <td>
                        <input
                            class="input_type"
                            type="text"
                            name="email"
                            placeholder="${e.getEmail()}"
                        />
                    </td>
                </tr>
                <tr>
                    <td><label>Phone Number</label></td>
                    <td>
                        <input
                            class="input_type"
                            type="text"
                            name="phone_number"
                            placeholder="${e.getPhone_number()}"
                        />
                    </td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td>
                        <input
                            class="input_type"
                            type="text"
                            name="password"
                            placeholder="${e.getPassword()}"
                        />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="error_message">${requestScope.error}</div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <div class="save_button primary_btn default_button">
                            <button type="submit">Edit</button>
                        </div>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="./assets/css/discount.css">
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Value</th>
                    <th>Amounts</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.data}" var="e">
                    <tr>
                        <td>${e.getName()}</td>
                        <td>${e.getValue()}</td>
                        <td>${e.getAmounts()}</td>
                        <td>
                            <form action="discounts" method="get">
                                <input type="text" name="name" value="${e.getName()}" hidden/>
                                <input type="text" name="value" value="${e.getValue()}" hidden/>
                                <input type="text" name="amounts" value="${e.getAmounts()}" hidden/>
                                <input type="submit" value="Thay Đổi"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>


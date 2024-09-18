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
            <td>${e.getName()}</td>
            <td>${e.getValue()}</td>
            <td>${e.getAmounts()}</td>
        </tr>
            </c:forEach>
        
        <form action="discounts" method="get">
            <input type="text" name="name" value="${requestScope.data.getname()}" hidden/>
            <input type="text" name="value" value="${requestScope.data.getvalue()}" hidden/>
            <input type="text" name="amounts" value="${requestScope.data.getamounts()}" hidden/>
            <input type="submit" value="Thay Đổi"/>
        </form>
    </body>
</html>

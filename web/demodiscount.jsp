<%-- 
    Document   : demodiscount
    Created on : Oct 30, 2024, 4:49:08 PM
    Author     : Minh
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <c:forEach items="${list}" var="d" >
        <div>
            ${d.getDiscountName()}
        </div>
    </c:forEach>
</body>
</html>

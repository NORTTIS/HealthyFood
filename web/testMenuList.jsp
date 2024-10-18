<%-- 
    Document   : testMenuList
    Created on : Oct 18, 2024, 11:45:46 AM
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
    <c:forEach var="m" items="${menuList}">
            <strong>Menu for ${m.key}</strong> 
            <div>
                <c:forEach var="nameEntry" items="${m.value}">
                        <strong>Name: ${nameEntry.key}</strong>
                        <div>
                            <c:forEach var="menu" items="${nameEntry.value}">
                                <div>
                                    
                                    ${menu.menu_name}</div>
                            </c:forEach>
                        </div>
                </c:forEach>
            </div>
    </c:forEach>
</body>
</html>

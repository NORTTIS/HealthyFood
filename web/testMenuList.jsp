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
                            <div>${menu.menu_name} - ${menu.getAverage_calories()}</div>
                        </c:forEach>
                    </div>
                </c:forEach>
            </div>
        </c:forEach>
        <div class="widget search-widget">
            <div class="wgt-content">
                <form action="" name="frm-search" method="get" class="frm-search">
                    <input type="text" name="search" value="${searchValue}" placeholder="SEACH..." class="input-text">
                    <input type="text" name="cate" value="${cate}" hidden/>
                    <input type="text" name="page" value="${currentPage}" hidden/>
                    <button type="submit"><i class="biolife-icon icon-search"></i></button>
                </form>
            </div>
        </div>

        <div class="widget biolife-filter" style="border-bottom: 1px solid #e6e6e6; padding: 37px 0; margin-bottom: 20px;">
            <button class="btn btn-default"><a href="createMenu" style="color: inherit">Create Menu</a></button>
        </div>
    </body>
</html>

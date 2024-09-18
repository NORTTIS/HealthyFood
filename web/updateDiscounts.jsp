<%-- 
    Document   : updateDiscounts
    Created on : Sep 18, 2024, 4:14:41 PM
    Author     : Gosu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="discount" value="${requestScope.discount}" />

        <form id="form" action="editDiscount" method="get">
            <label>Tên Mã Giảm Giá</label>
            <input class="input_type" type="text" name="name" placeholder="${discount.name}" value="${discount.name}" readonly>
            <br>

            <label>Giá Trị Giảm Giá</label>
            <input class="input_type" type="text" name="value" placeholder="${discount.value}" value="${discount.value}">
            <br>

            <label>Số Lượng</label>
            <input class="input_type" type="text" name="amounts" placeholder="${discount.amounts}" value="${discount.amounts}">
            <br>

            <div class="save_button primary_btn default_button">
                <button type="submit">Edit</button>
            </div>
        </form>
    </body>
</html>

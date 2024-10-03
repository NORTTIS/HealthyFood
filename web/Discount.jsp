<%-- 
    Document   : Discount
    Created on : Sep 18, 2024, 8:25:49 AM
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
        <form action="createDiscount" method="post">
            <label for="name">Tên Mã Giảm Giá</label>
            <input type="text" id="name" name="name" required/>
            <br/>

            <label for="value">Giá Trị Giảm Giá</label>
            <input type="number" id="value" name="value"  required/>
            <br/>

            <label for="amounts">Số Lượng</label>
            <input type="number" id="amounts" name="amounts" required/>
            <br/>

            <input type="submit" value="Tạo Mã Giảm Giá"/>
        </form>
        <form action="discounts" method="get">
            <input type="text" name="name" value="${requestScope.data.getname()}" hidden/>
            <input type="text" name="value" value="${requestScope.data.getvalue()}" hidden/>
            <input type="text" name="amounts" value="${requestScope.data.getamounts()}" hidden/>
            <input type="submit" value="Thay Đổi"/>
        </form>
    </form>
</body>
</html>

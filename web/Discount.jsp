<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="./assets/css/creatdiscount.css">
    </head>
    <body>
        <form action="createDiscount" method="post">
            <h2>Create Discount Code</h2>
            <table>
                <tr>
                    <td><label for="name">Tên Mã Giảm Giá</label></td>
                    <td><input type="text" id="name" name="name" required/></td>
                </tr>
                <tr>
                    <td><label for="value">Giá Trị Giảm Giá</label></td>
                    <td><input type="number" id="value" name="value" required/></td>
                </tr>
                <tr>
                    <td><label for="amounts">Số Lượng</label></td>
                    <td><input type="number" id="amounts" name="amounts" required/></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Tạo Mã Giảm Giá"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

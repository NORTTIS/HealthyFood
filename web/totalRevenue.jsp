<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Total Revenue</title>
</head>
<body>
    <h1>Total Revenue for the Month</h1>
    <p>Total Revenue: $<%= request.getAttribute("totalRevenue") %></p>

    <h2>Revenue List</h2>
    <table border="1">
        <tr>
            <th>Product ID</th>
            <th>Quantity Sold</th>
            <th>Total Price</th>
        </tr>
        <%
            List<Products> revenueList = (List<Products>) request.getAttribute("revenueList");
            for (Products product : revenueList) {
        %>
            <tr>
                <td><%= product.getProductId() %></td>
                <td><%= product.getQuantityInStock() %></td>
                <td>$<%= product.getPrice() %></td>
            </tr>
        <%
            }
        %>
    </table>
</body>
</html>

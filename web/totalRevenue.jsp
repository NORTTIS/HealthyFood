<h2>Revenue Report for ${month} / ${year}</h2>
<h3>Total Revenue: $${totalRevenue}</h3>
<table border="1">
    <tr><th>Product ID</th><th>Total Quantity Sold</th><th>Total Revenue</th></tr>
    <c:forEach var="product" items="${revenueList}">
        <tr>
            <td>${product.productId}</td>
            <td>${product.quantityInStock}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
</table>

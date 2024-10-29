<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Revenue Input</title>
    </head>
    <body>
        <h2>Enter Month and Year for Revenue Report</h2>
        <form action="Revenue" method="get">
            <label for="month">Month:</label>
            <input type="text" id="month" name="month" required>

            <label for="year">Year:</label>
            <input type="text" id="year" name="year" required>

            <button type="submit">View Report</button>
        </form>

        <!-- Display Revenue Report if Available -->
        <c:if test="${not empty totalRevenue}">
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
        </c:if>
    </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Revenue Input</title>
</head>
<body>
    <h2>Enter Month and Year for Revenue Report</h2>
    <form action="Revenue" method="get">
        <label for="month">Month:</label>
        <input type="number" id="month" name="month" min="1" max="12" required>
        <label for="year">Year:</label>
        <input type="number" id="year" name="year" min="0" required>
        <button type="submit">View Revenue</button>
    </form>
</body>
</html>

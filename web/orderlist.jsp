<%-- 
    Document   : orderlist
    Created on : Nov 5, 2024, 11:58:22 PM
    Author     : Norttie
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order list</title>
        <link href="https://fonts.googleapis.com/css?family=Cairo:400,600,700&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400i,700i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu&amp;display=swap" rel="stylesheet">
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
        <!-- Tải jQuery trước -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <!-- Sau đó tải DataTables -->
        <link rel="stylesheet" type="text/css" href="./assets/css/jquery.dataTables.min.css"> 


        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/slick.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/main-color03-green.css">
    </head>
    <body>
        <c:if test="${sessionScope.acc == null}">
            <c:redirect url="login"/>
        </c:if>
        <!-- header -->
        <jsp:include page="./jsptemplate/header.jsp" />
        <section style="margin: 45px 0px; " >
            <div class="container py-5">
                <div class="" id="myorder" style=" overflow-y: scroll;
                     height: 450px;">
                    <table class="table order-list"  id="myOrderTable">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Status </th>
                                <th scope="col">Total calories</th>
                                <th scope="col">Total amount</th>
                                <th scope="col">Order date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listO}" var="i" varStatus="j">
                                <tr data-href="OrderDetail?orderId=${i.orderId}" class="record-order">
                                    <th scope="row">${i.orderId}</th>
                                    <th scope="col" >${i.status}</th>
                                    <th scope="col">${i.totalCal}</th>
                                    <th scope="col">${i.getAmmount()} VND</th>
                                    <th scope="col">${i.getCreateAt()}</th>
                                    
                                </tr>
                            </c:forEach>


                        </tbody>
                    </table>
                </div>
            </div>
        </section>

        <jsp:include page="./jsptemplate/footer.jsp" />

        <script src="assets/js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.countdown.min.js"></script>
        <script src="assets/js/slick.min.js"></script>
        <script src="assets/js/biolife.framework.js"></script>
        <script src="assets/js/jquery.nicescroll.min.js"></script>
        <script src="assets/js/functions.js"></script>

        <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                const rows = document.querySelectorAll("table tbody tr");
                rows.forEach((row) => {
                    row.addEventListener("click", function () {
                        const href = this.getAttribute("data-href");
                        if (href) {
                            window.location.href = href;
                        }
                    });
                });
            });
            $(document).ready(function () {
                $('#myOrderTable').DataTable();
            });
        </script>
    </body>
</html>

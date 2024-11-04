<%-- 
    Document   : discountList
    Created on : Nov 4, 2024, 11:38:07 PM
    Author     : Minh
--%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Biolife - Organic Food</title>
        <link href="https://fonts.googleapis.com/css?family=Cairo:400,600,700&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400i,700i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu&amp;display=swap" rel="stylesheet">
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/slick.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/main-color03-green.css">
        <link rel="stylesheet" href="assets/css/nutriMenu.css">
    </head>
    <body class="biolife-body">

        <!--Preloader-->
        <div id="biof-loading">
            <div class="biof-loading-center">
                <div class="biof-loading-center-absolute">
                    <div class="dot dot-one"></div>
                    <div class="dot dot-two"></div>
                    <div class="dot dot-three"></div>
                </div>
            </div>
        </div>

        <!-- HEADER -->
        <jsp:include page="./jsptemplate/header.jsp"/>

        <!--Hero Section-->
        <div class="hero-section hero-background style-02">
            <h1 class="page-title">Discount List</h1>
        </div>
        <!-- Page Contain -->
        <div class="page-contain blog-page">

            <div class="container">
                <!-- Main content -->
                <div id="main-content" class="main-content">

                    <!-- Sidebar -->
                    <aside id="sidebar" class="sidebar blog-sidebar col-lg-2 col-md-3 col-sm-12 col-xs-12">
                        <div class="sidebar-contain">

                            <!--Search Widget-->
                            <div class="widget search-widget">

                            </div>
                            <div class="biolife-filter" style="padding: 37px 0; margin-bottom: 20px;">
                                <button class="btn btn-default"><a href="createDiscount" style="color: inherit">Create Discount</a></button>
                            </div>
                            <div class="biolife-filter" style="margin-bottom: 20px;">
                                <button class="btn btn-default"><a href="discountList" style="color: inherit">Discount List</a></button>
                            </div>
                        </div>
                    </aside>

                    <div  class="sidebar blog-sidebar col-lg-10 col-md-9 col-sm-12 col-xs-12">
                        <div>
                            <c:forEach var="d" items="${list}">
                                <div style="padding: 10px; margin: 10px 10%; background-color: #7faf51; color: white; display: flex; justify-content: space-between">
                                    Code: ${d.getDiscountName()} <span>Value: ${d.getDiscountValue()}%</span>
                                    <span><a style="color: yellow" href="discountList?ac=delete&id=${d.getId()}">Delete</a></span>
                                </div>
                            </c:forEach>
                        </div>
                        <center>
                            <div style="display: flex; justify-content: space-evenly; margin: 30px 0;">
                                <a href="discountList?page=${currentPage - 1}">Previous</a>
                                <c:choose>
                                    <c:when test="${totalPages <= 5}">
                                        <!-- Nếu tổng số trang ít hơn hoặc bằng 5, hiển thị tất cả -->
                                        <c:forEach begin="1" end="${totalPages}" var="i">
                                            <a style="${i == currentPage ? 'color: red;' : ''}" href="discountList?page=${i}">${i}</a>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <!-- Nếu tổng số trang lớn hơn 5 -->
                                        <c:if test="${currentPage > 3}">
                                            <a href="discountList?page=1">1</a>
                                            <c:if test="${currentPage > 4}">
                                                <span>...</span>
                                            </c:if>
                                        </c:if>

                                        <c:forEach var="i" begin="${currentPage - 1}" end="${currentPage + 1}">
                                            <c:if test="${i >= 1 && i <= totalPages}">
                                                <a href="discountList?page=${i}">${i}</a>
                                            </c:if>
                                        </c:forEach>

                                        <c:if test="${currentPage < totalPages - 2}">
                                            <c:if test="${currentPage < totalPages - 1}">
                                                <span>...</span>
                                            </c:if>
                                            <a href="discountList?page=${totalPages}">${totalPages}</a>
                                        </c:if>
                                    </c:otherwise>
                                </c:choose>
                                <a href="discountList?page=${currentPage + 1}">Next</a>
                            </div>
                        </center>
                    </div>

                </div>
            </div>
        </div>

        <!-- FOOTER -->
        <jsp:include page="./jsptemplate/footer.jsp" />



        <!-- Scroll Top Button -->
        <a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>

        <script src="assets/js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.countdown.min.js"></script>
        <script src="assets/js/jquery.nicescroll.min.js"></script>
        <script src="assets/js/slick.min.js"></script>
        <script src="assets/js/biolife.framework.js"></script>
        <script src="assets/js/functions.js"></script>
        <script src="assets/js/nutriMenu.js"></script>

    </body>
</html>


<%-- 
    Document   : zNutriMenu
    Created on : Oct 18, 2024, 1:54:14 AM
    Author     : Minh
--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    </head>
    <body class="biolife-body">

        <!-- Preloader -->
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
        <jsp:include page="./jsptemplate/header.jsp" />

        <!--Hero Section-->
        <div class="hero-section hero-background style-02">
            <h1 class="page-title">Menu List</h1>
        </div>

        <!-- Page Contain -->
        <div class="page-contain blog-page">

            <div class="container">
                <!-- Main content -->
                <div id="main-content" class="main-content">

                    <div class="row">
                        <!-- Sidebar -->
                        <aside id="sidebar" class="sidebar blog-sidebar col-lg-3 col-md-4 col-sm-12 col-xs-12">
                            <div class="sidebar-contain">

                                <!--Search Widget-->
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
                            </div>
                        </aside>

                        <div id="main-content" class="main-content col-lg-9 col-md-8 col-sm-12 col-xs-12">
                            <!--articles block-->
                            <ul class="posts-list main-post-list">
                                <!--loop menu here-->
                                <c:forEach items="${menuList}" var="m">
                                    <h1>aaaaa</h1>
                                </c:forEach>

                            </ul>
                        </div>
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


    </body>
</html>


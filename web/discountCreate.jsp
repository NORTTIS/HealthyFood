<%-- 
    Document   : discountCreate
    Created on : Oct 30, 2024, 5:00:06 PM
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
        <style>
            .information{
                display: flex;
                justify-content: space-between;
                margin: 15px 0;
            }
        </style>
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
            <h1 class="page-title">Create Discount</h1>
        </div>
        <!-- Page Contain -->
        <div class="page-contain blog-page">

            <div class="container">
                <!-- Main content -->
                <div id="main-content" class="main-content">
                    <center><div><h2 style="color: red">${error}</h2></div></center>
                    <div class="sidebar blog-sidebar col-lg-6 col-md-6 col-sm-6 col-xs-6" style="margin-left: 25%; background-color: #acd8a7">

                        <form action="createDiscount" method="post">
                            <div class="information">
                                <label for="discountName">Discount Code</label>
                                <input type="text" id="discountName" name="discountName" required>
                            </div>
                            <div class="information">
                                <label for="discountValue">Discount Value</label>
                                <input type="number" id="discountValue" name="discountValue" required>
                            </div>
                            <div style="display: flex; justify-content: space-evenly; margin: 25px 0">
                                <button class="btn btn-default" type="button"><a style="color: #ffffff" href="discountList">Return</a></button>
                                <button class="btn btn-default" type="submit">Create</button>
                            </div>
                        </form>
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
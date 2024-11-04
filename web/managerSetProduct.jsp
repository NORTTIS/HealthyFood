<%-- 
    Document   : managerSetProduct
    Created on : Nov 1, 2024, 1:24:30 AM
    Author     : Gosu
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
            <h1 class="page-title">Set Product</h1>
        </div>
        <!-- Page Contain -->
        <div class="page-contain blog-page">

            <div class="container">
                <!-- Main content -->
                <div id="main-content" class="main-content">

                    <div  class="sidebar blog-sidebar col-lg-12 col-md-12 col-sm-12 col-xs-12" 
                          style="
                          border: 1px solid;
                          padding: 10px;
                          box-shadow: 5px 10px 90px 10px #888888;
                          margin: 10px 25%;
                          width: 55%;">

                        <form action="setProduct" method="post" enctype="multipart/form-data">

                            <div id="mealsContainer">
                                <!-- nơi thêm các thẻ bữa ăn mới vào -->
                                <c:forEach var="i" items="${list}">
                                    <div class="menu-item">
                                        <input type="text" name="totalMenuId" value="${totalMenuId}" hidden/>
                                        <input value="${i.getMenu_name()}" type="text" name="name" readonly/>
                                        <select name="category">
                                            <c:forEach var="c" items="${cate}">
                                                <option>${c.value}</option>
                                            </c:forEach>
                                        </select>
                                        <input type="text" name="supplier" required placeholder="Input supplier"/>
                                        <input type="text" name="description" required placeholder="Input description"/>
                                        <input type="number" name="price" step="0.01" min="0" required placeholder="Input price"/>
                                        <input type="number" name="qty" placeholder="Input quantity" required/>
                                        <input type="number" name="calo" step="0.01" min="0" value="${i.getAverage_calories()}" readonly/>
                                        <input type="file" name="picture" accept="image/*" required/>
                                    </div>
                                </c:forEach>
                            </div>
                            <input type="text" name="totalMenuId" value="${totalMenuId}" hidden/>
                            <div class="sidebar blog-sidebar col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <input style="width:120px" type="submit" value="Create Product" class="btn btn-default"/>
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
        <script src="assets/js/nutriMenu.js"></script>
    </body>

</html>


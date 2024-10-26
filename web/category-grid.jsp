<%-- 
   Document   : category-grid
   Created on : Oct 7, 2024, 3:48:59 PM
   Author     : Norttie
--%>

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
        <link rel="stylesheet" href="assets/css/nice-select.css">
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

        <!--HEADER-->
        <jsp:include page="./jsptemplate/header.jsp" />

        <!--Hero Section-->
        <div class="hero-section hero-background">
            <h1 class="page-title">Shop</h1>
        </div>

        <!--Navigation section-->
        <div class="container">
            <nav class="biolife-nav">
            </nav>
        </div>


        <div class="page-contain category-page left-sidebar">
            <div class="container">
                <div class="row">
                    <!-- Main content -->
                    <div id="main-content" class="main-content col-lg-9 col-md-8 col-sm-12 col-xs-12">
                        <div class="product-category list-style">

                            <div class="row">

                                <!-- Main content -->

                                <div id="main-content" class="main-content col-lg-12 col-md-12 col-sm-12 col-xs-12">

                                    <div class="block-item recently-products-cat md-margin-bottom-39">
                                        <ul class="products-list biolife-carousel nav-center-02 nav-none-on-mobile" 
                                            data-slick='{"arrows": true, "dots": false, "slidesMargin": 0, "slidesToShow": 1, "infinite": false, "speed": 800}'> 
                                        </ul>
                                    </div>

                                    <div class="product-category grid-style">
                                        <div class="row">
                                            <ul class="products-list">
                                                <c:forEach items="${listP}" var="o">
                                                    <li class="product-item col-lg-2 col-md-3 col-sm-4 col-xs-6">
                                                        <div class="contain-product layout-default">
                                                            <div class="product-thumb">
                                                                <a href="#" class="link-to-product">
                                                                    <img src="assets/images/products/${o.picture}" alt="dd" width="270" height="270" class="product-thumnail">
                                                                </a>
                                                            </div>
                                                            <div class="info">
                                                                <b class="categories">${o.category}</b>
                                                                <h4 class="product-title"><a href="#" class="pr-name">${o.name}</a></h4>
                                                                <div class="price">
                                                                    <ins><span class="price-amount">${o.price}<span class="currencySymbol"> VND</span></span></ins>
                                                                </div>

                                                                <div class="slide-down-box">
                                                                    <p class="message">${o.description}</p>
                                                                    <div class="buttons">
                                                                        <a href="#" class="btn wishlist-btn"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                                        <a href="#" class="btn add-to-cart-btn"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>add to cart</a>
                                                                        <a href="#" class="btn compare-btn"><i class="fa fa-random" aria-hidden="true"></i></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>

                                        <div class="biolife-panigations-block ">
                                            <ul class="panigation-contain">
                                                <c:if test="${currentPage > 1}">
                                                    <li><a href="blogdetail?page=1" class="link-page next"><i class="fa fa-angle-double-left" aria-hidden="true"></i></a></li>
                                                    <li><a href="blogdetail?page=1" class="link-page next"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
                                                        </c:if>

                                                <c:choose>
                                                    <c:when test="${currentPage > 3}">
                                                        <li><span>...</span><li/>
                                                    </c:when>
                                                </c:choose>

                                                <c:forEach begin="${(currentPage - 2) > 1 ? (currentPage - 2) : 1}" 
                                                           end="${(currentPage + 2) < totalPages ? currentPage + 2 : totalPages}" 
                                                           var="i">

                                                    <li><a href="blogdetail?page=1" class="link-page ${i == currentPage ? 'current-page' : ''}">${i}</a></li>
                                                    </c:forEach>

                                                <c:choose>
                                                    <c:when test="${currentPage < totalPages - 2}">
                                                        <li><span>...</span><li/>
                                                    </c:when>
                                                </c:choose>

                                                <c:if test="${currentPage < totalPages}">
                                                    <li><a href="blogdetail?page=1" class="link-page next"><i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                                    <li><a href="blogdetail?page=1" class="link-page next"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                        </c:if>
                                            </ul>
                                            <div/>
                                        </div>
                                    </div>

                                </div>

                            </div>

                        </div>



                    </div>

                </div>
                <!-- Sidebar -->
                <aside id="sidebar" class="sidebar col-lg-3 col-md-4 col-sm-12 col-xs-12">
                    <div class="biolife-mobile-panels">
                        <span class="biolife-current-panel-title">Sidebar</span>
                        <a class="biolife-close-btn" href="#" data-object="open-mobile-filter">&times;</a>
                    </div>
                    <div class="sidebar-contain">






                        <div class="widget biolife-filter" >
                            <h4 class="wgt-title">Category</h4>
                            <div class="wgt-content">
                                <ul class="cat-list">
                                    <li class="cat-list-item "><a href="shop" class="cat-link">All</a></li>
                                        <c:forEach items="${listC}" var="o">
                                        <li class="cat-list-item ${tag == o.cid ? "active": ""}"><a href="category?cid=${o.cid}">${o.cname}</a></li>
                                        </c:forEach>
                                </ul>
                            </div>
                        </div>


                        <div class="widget biolife-filter" style="height: 380px;">
                            <!--                        <div class="widget biolife-filter" style="height: 380px;">
                                                       <h4 class="wgt-title">BMI menu - your index: </h4>
                                                       <div class="wgt-content">
                                                           <ul class="cat-list">
                            <li class="cat-list-item "><a href="#" class="cat-link">BMI < 18.5</a></li>
                                                               <li class="cat-list-item"><a href="#" class="cat-link">18.5 ≤ BMI < 24.9</a></li>
                                                               <li class="cat-list-item"><a href="#" class="cat-link">25 ≤ BMI < 29.9</a></li>
                                                               <li class="cat-list-item"><a href="#" class="cat-link">BMI ≥ 30</a></li>
                                                           </ul>
                                                       </div>
                                                    </div>
                                                    </div>-->


                            <!--                        <div class="widget price-filter biolife-filter">
                                                        <h4 class="wgt-title">Price</h4>
                                                        <div class="wgt-content">
                                                            <div class="frm-contain">
                                                                <form action="#" name="price-filter" id="price-filter" method="get">
                                                                    <p class="f-item">
                                                                        <label for="pr-from">from</label>
                                                                        <input class="input-number" type="number" id="pr-from" value="" name="price-from">
                                                                    </p>
                                                                    <p class="f-item">
                                                                        <label for="pr-to">to VND</label>
                                                                        <input class="input-number" type="number" id="pr-to" value="" name="price-from">
                                                                    </p>
                                                                    <p class="f-item"><button class="btn-submit" type="submit">go</button></p>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>-->
                            <!--                        <div class="widget price-filter biolife-filter">
                                                        <h4 class="wgt-title">Price</h4>
                                                        <div class="wgt-content">
                                                            <div class="frm-contain">
                                                                <form action="#" name="price-filter" id="price-filter" method="get">
                                                                    <p class="f-item">
                                                                        <label for="pr-from">from</label>
                                                                        <input class="input-number" type="number" id="pr-from" value="" name="price-from">
                                                                    </p>
                                                                    <p class="f-item">
                                                                        <label for="pr-to">to VND</label>
    <input class="input-number" type="number" id="pr-to" value="" name="price-from">
                                                                    </p>
                                                                    <p class="f-item"><button class="btn-submit" type="submit">go</button></p>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>-->

                            <div class="widget price-filter biolife-filter">
                                <h4 class="wgt-title">Price</h4>
                                <div class="wgt-content">
                                    <div class="wgt-content">  
                                        <ul class="cat-list">
                                            <li class="cat-list-item">
                                                <a href="sort?sort=asc" class="cat-link">Ascending</a>
                                            </li>
                                            <li class="cat-list-item">
                                                <a href="sort?sort=desc" class="cat-link">Descending</a>
                                            </li>
                                        </ul>
                                        <div class="frm-contain">
                                            <!-- Form nhập khoảng giá -->
                                            <form action="productSearch" name="price-filter" id="price-filter" method="get">
                                                <form action="CategoryPriceControl" name="price-filter" id="price-filter" method="get">
                                                    <p class="f-item">
                                                        <label for="pr-from">From</label>
                                                        <!-- Input number không cho phép giá trị âm -->
                                                        <input class="input-number" type="number" id="pr-from" name="fromPrice" min="0" required>
                                                    </p>
                                                    <p class="f-item">
                                                        <label for="pr-to">To</label>
                                                        <!-- Input number không cho phép giá trị âm -->
                                                        <input class="input-number" type="number" id="pr-to" name="toPrice" min="0" required>VND
                                                    </p>
                                                    <p class="f-item">
                                                        <button class="btn-submit" type="submit">Go</button>
                                                    </p>
                                                </form>
                                            </form>      
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="widget calorie-filter biolife-filter">
                                <h4 class="wgt-title">Calorie</h4>
                                <div class="wgt-content">  
                                    <ul class="cat-list">
                                        <li class="cat-list-item">
                                            <a href="sortC?sort=asc" class="cat-link">Ascending</a>
                                        </li>
                                        <li class="cat-list-item">
                                            <a href="sortC?sort=desc" class="cat-link">Descending</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                </aside>
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
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery.nicescroll.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/biolife.framework.js"></script>
    <script src="assets/js/functions.js"></script>
</body>
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
            <h1 class="page-title">Organic Fruits</h1>
        </div>

        <!--Navigation section-->
        <div class="container">
            <nav class="biolife-nav">
                <ul>
                    <li class="nav-item"><a href="index-2.html" class="permal-link">Home</a></li>
                    <li class="nav-item"><a href="#" class="permal-link">Natural Organic</a></li>
                    <li class="nav-item"><span class="current-page">Fresh Fruit</span></li>
                </ul>
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
                                            <li class="product-item">

                                            </li>





                                        </ul>
                                    </div>

                                    <div class="product-category grid-style">
                                        <div class="row">
                                            <ul class="products-list">
                                                <c:forEach items="${listP}" var="o">
                                                    <li class="product-item col-lg-3 col-md-3 col-sm-4 col-xs-6">

                                                        <div class="contain-product layout-default">
                                                            <div class="product-thumb">
                                                                <a href="productDetail" class="link-to-product">
                                                                    <img src="assets/images/products/${o.picture}" alt="dd" style="width: 120px;height: 120px; object-fit: cover;margin:0 auto;" class="product-thumnail">
                                                                </a>
                                                            </div>

                                                            <div class="info">

                                                                <h4 class="product-title"><a href="#" class="pr-name">${o.name}</a></h4>
                                                                <div class="price">
                                                                    <ins><span class="price-amount">${o.price}<span class="currencySymbol"> VND</span></span></ins>
                                                                </div>


                                                                <div class="slide-down-box">
                                                                    <p class="message">${o.description}</p>
                                                                    <div class="buttons">
                                                                        <a href="#" class="btn wishlist-btn"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                                        <a href="#" class="btn add-to-cart-btn"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>add to cart</a>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </li>
                                                </c:forEach>
                                            </ul>
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

                            <!-- Category Filter -->
                            <div class="widget biolife-filter">
                                <h4 class="wgt-title">Category</h4>
                                <div class="wgt-content">
                                    <ul class="cat-list">
                                        <li class="cat-list-item">
                                            <a href="shop" class="cat-link ${tag == null ? 'active' : ''}">All</a>
                                        </li>
                                        <c:forEach items="${listC}" var="o">
                                            <li class="cat-list-item ${tag != null && tag == o.cid ? 'active' : ''}">
                                                <a href="shop?category=${o.cid}" class="cat-link">${o.cname}</a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>

                            <!-- Price Filter -->
                            <div class="widget price-filter biolife-filter">
                                <h4 class="wgt-title">Price</h4>
                                <div class="wgt-content">
                                    <ul class="cat-list">
                                        <li class="cat-list-item"><a href="shop?sortType=priceAsc" class="cat-link ${sortType == 'priceAsc' ? 'active' : ''}">Ascending</a></li>
                                        <li class="cat-list-item"><a href="shop?sortType=priceDesc" class="cat-link ${sortType == 'priceDesc' ? 'active' : ''}">Descending</a></li>
                                    </ul>
                                    <div class="frm-contain">
                                        <form action="shop" name="price-filter" id="price-filter" method="get">
                                            <p class="f-item">
                                                <label for="pr-from">From</label>
                                                <input class="input-number" type="number" id="pr-from" name="fromPrice" min="0" required>
                                            </p>
                                            <p class="f-item">
                                                <label for="pr-to">To</label>
                                                <input class="input-number" type="number" id="pr-to" name="toPrice" min="0" required>VND
                                            </p>
                                            <p class="f-item">
                                                <button class="btn-submit" type="submit">Go</button>
                                            </p>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <!-- Calorie Filter -->
                            <div class="widget calorie-filter biolife-filter">
                                <h4 class="wgt-title">Calorie</h4>
                                <div class="wgt-content">
                                    <ul class="cat-list">
                                        <li class="cat-list-item"><a href="shop?sortType=caloriesAsc" class="cat-link ${sortType == 'caloriesAsc' ? 'active' : ''}">Ascending</a></li>
                                        <li class="cat-list-item"><a href="shop?sortType=caloriesDesc" class="cat-link ${sortType == 'caloriesDesc' ? 'active' : ''}">Descending</a></li>
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

</html>
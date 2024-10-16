<%-- 
    Document   : index.jsp
    Created on : Sep 9, 2024, 9:30:58 PM
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
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/slick.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/main-color03-green.css">
    </head>

    <body class="biolife-body">

<!--         Preloader loading
        <div id="biof-loading">
            <div class="biof-loading-center">
                <div class="biof-loading-center-absolute">
                    <div class="dot dot-one"></div>
                    <div class="dot dot-two"></div>
                    <div class="dot dot-three"></div>
                </div>
            </div>
        </div>-->
        <!--HEADER-->
        <jsp:include page="./jsptemplate/header.jsp" />


        <!-- Page Contain -->
        <div class="page-contain">

            <!-- Main content -->
            <div id="main-content" class="main-content">

                <!--Block 01: Main Slide-->
                <div class="main-slide block-slider nav-change">
                    <ul class="biolife-carousel"
                        data-slick='{"arrows": true, "dots": false, "slidesMargin": 0, "slidesToShow": 1, "infinite": false, "speed": 800}'>
                        <li>
                            <div class="slide-contain slider-opt03__layout02 slide_animation type_02">
                                <div class="media background-geen-01"></div>
                                <div class="text-content">
                                    <i class="first-line">Pomegranate</i>
                                    <h3 class="second-line">Vegetables 100% Organic</h3>
                                    <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                                    <p class="buttons">
                                        <a href="shop" class="btn btn-bold">Shop now</a>
                                        <a href="#" class="btn btn-thin">View lookbook</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="slide-contain slider-opt03__layout02 slide_animation type_02">
                                <div class="media background-geen-02"></div>
                                <div class="text-content">
                                    <i class="first-line">Pomegranate</i>
                                    <h3 class="second-line">Vegetables 100% Organic</h3>
                                    <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                                    <p class="buttons">
                                        <a href="shop" class="btn btn-bold">Shop now</a>
                                        <a href="#" class="btn btn-thin">View lookbook</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="slide-contain slider-opt03__layout02 slide_animation type_02">
                                <div class="media background-geen-01"></div>
                                <div class="text-content">
                                    <i class="first-line">Pomegranate</i>
                                    <h3 class="second-line">Vegetables 100% Organic</h3>
                                    <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                                    <p class="buttons">
                                        <a href="shop" class="btn btn-bold">Shop now</a>
                                        <a href="#" class="btn btn-thin">View lookbook</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="slide-contain slider-opt03__layout02 slide_animation type_02">
                                <div class="media background-geen-02"></div>
                                <div class="text-content">
                                    <i class="first-line">Pomegranate</i>
                                    <h3 class="second-line">Vegetables 100% Organic</h3>
                                    <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                                    <p class="buttons">
                                        <a href="shop" class="btn btn-bold">Shop now</a>
                                        <a href="#" class="btn btn-thin">View lookbook</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="slide-contain slider-opt03__layout02 slide_animation type_02">
                                <div class="media background-geen-01"></div>
                                <div class="text-content">
                                    <i class="first-line">Pomegranate</i>
                                    <h3 class="second-line">Vegetables 100% Organic</h3>
                                    <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                                    <p class="buttons">
                                        <a href="shop" class="btn btn-bold">Shop now</a>
                                        <a href="#" class="btn btn-thin">View lookbook</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="slide-contain slider-opt03__layout02 slide_animation type_02">
                                <div class="media background-geen-02"></div>
                                <div class="text-content">
                                    <i class="first-line">Pomegranate</i>
                                    <h3 class="second-line">Vegetables 100% Organic</h3>
                                    <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                                    <p class="buttons">
                                        <a href="shop" class="btn btn-bold">Shop now</a>
                                        <a href="#" class="btn btn-thin">View lookbook</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="slide-contain slider-opt03__layout02 slide_animation type_02">
                                <div class="media background-geen-01"></div>
                                <div class="text-content">
                                    <i class="first-line">Pomegranate</i>
                                    <h3 class="second-line">Vegetables 100% Organic</h3>
                                    <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                                    <p class="buttons">
                                        <a href="shop" class="btn btn-bold">Shop now</a>
                                        <a href="#" class="btn btn-thin">View lookbook</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="slide-contain slider-opt03__layout02 slide_animation type_02">
                                <div class="media background-geen-02"></div>
                                <div class="text-content">
                                    <i class="first-line">Pomegranate</i>
                                    <h3 class="second-line">Vegetables 100% Organic</h3>
                                    <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                                    <p class="buttons">
                                        <a href="shop" class="btn btn-bold">Shop now</a>
                                        <a href="#" class="btn btn-thin">View lookbook</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="slide-contain slider-opt03__layout02 slide_animation type_02">
                                <div class="media background-geen-01"></div>
                                <div class="text-content">
                                    <i class="first-line">Pomegranate</i>
                                    <h3 class="second-line">Vegetables 100% Organic</h3>
                                    <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                                    <p class="buttons">
                                        <a href="shop" class="btn btn-bold">Shop now</a>
                                        <a href="#" class="btn btn-thin">View lookbook</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="slide-contain slider-opt03__layout02 slide_animation type_02">
                                <div class="media background-geen-02"></div>
                                <div class="text-content">
                                    <i class="first-line">Pomegranate</i>
                                    <h3 class="second-line">Vegetables 100% Organic</h3>
                                    <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                                    <p class="buttons">
                                        <a href="shop" class="btn btn-bold">Shop now</a>
                                        <a href="#" class="btn btn-thin">View lookbook</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>


                <!--Block 02: Banner Promotion 01-->

                <div class="banner-promotion-01 xs-margin-top-50px sm-margin-top-70px">
                    <div class="biolife-banner promotion3 biolife-banner__promotion3 green-style">
                        <div class="banner-contain">
                            <div class="media">
                                <div class="img-moving position-1">
                                    <img src="assets/images/home-03/img-moving-pst-1-geen.png" width="149" height="139"
                                         alt="img msv">
                                </div>
                            </div>
                            <div class="text-content">
                                <div class="container text-wrap">
                                    <span class="first-line">Healthy Food1111</span>
                                    <b class="second-line">Vegetable Always fresh</b>
                                    <p class="third-line">Food Heaven Made Easy sounds like the name of an amazingly
                                        delicious food delivery service, but don't be fooled...</p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Block 03: Banner promotion 02-->
                <div class="banner-promotion-02 z-index-20">
                    <div class="biolife-banner promotion2 biolife-banner__promotion2 advance">
                        <div class="banner-contain">
                            <div class="container">
                                <div class="media"></div>
                                <div class="text-content">
                                    <b class="first-line">Food Heaven Made</b>
                                    <span class="second-line">Easy <i>Healthy, Happy Life</i></span>
                                    <p class="third-line">Food Heaven Made Easy sounds like the name of an amazingly
                                        delicious food delivery service, but don't be fooled. The blog is actually a
                                        compilation of recipes, cooking videos, and nutrition tips.</p>
                                    <p class="buttons">
                                        <a href="#" class="btn btn-bold">Read More</a>
                                        <a href="#" class="btn btn-thin">View Menu Now</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Block 04: Products-->
                <div class="Product-box sm-margin-top-96px">
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-12 col-md-7 col-sm-6">
                                <div class="advance-product-box">
                                    <div class="biolife-title-box bold-style biolife-title-box__bold-style">
                                        <h3 class="title">Sale Products</h3>
                                    </div>
                                    <ul class="products biolife-carousel nav-center-03 nav-none-on-mobile row-space-29px"
                                        data-slick='{"rows":2,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":30,"slidesToShow":3,"responsive":[{"breakpoint":1200,"settings":{ "rows":2, "slidesToShow": 3}},{"breakpoint":992, "settings":{ "rows":2, "slidesToShow": 1}},{"breakpoint":768, "settings":{ "rows":2, "slidesToShow": 2}},{"breakpoint":500, "settings":{ "rows":2, "slidesToShow": 1}}]}'>
                                        <!--loop here-->
                                        <li class="product-item">
                                            <div
                                                class="contain-product right-info-layout contain-product__right-info-layout">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-19.jpg" alt="dd" width="270"
                                                             height="270" class="product-thumnail">
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Pumpkins
                                                            Fairytale</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="rating" hidden="">
                                                        <p class="star-rating"><span class="" style="width: 80%;"></span></p>
                                                        <span class="review-count">(05 Reviews)</span>
                                                    </div>
                                                    <div class="slide-down-box" style="margin-top: 25px;">
                                                        <div>
                                                            <a href="wishcart?ac=add&productId=3" class="btn wish-btn" style="margin-right: 10px;"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                            <a href="#" class="btn btn-default">add to cart</a>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </li>
                                       
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Block 05: Blog Posts-->
                <div class="blog-posts sm-margin-top-93px sm-padding-top-72px xs-padding-bottom-50px">
                    <div class="container">
                        <div class="biolife-title-box">
                            <span class="subtitle">The freshest and most exciting news</span>
                            <h3 class="main-title">From the Blog</h3>
                        </div>
                        <ul class="biolife-carousel nav-center nav-none-on-mobile xs-margin-top-36px"
                            data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":30,"slidesToShow":3, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 3}},{"breakpoint":992, "settings":{ "slidesToShow": 2}},{"breakpoint":768, "settings":{ "slidesToShow": 2}},{"breakpoint":600, "settings":{ "slidesToShow": 1}}]}'>
                            <c:forEach items="${bList}" var="i" varStatus="j">
                                <li>
                                    <div class="post-item effect-01 style-bottom-info layout-02 ">
                                        <div class="thumbnail">
                                            <a href="blog?blogId=${i.id}" class="link-to-post"><img src="assets/images/our-blog/${i.imagePath}"
                                                                                                    style="width: 360px; height: 270px;" alt=""></a>

                                        </div>
                                        <div class="post-content">
                                            <h4 class="post-name"><a href="blog?blogId=${i.id}" class="linktopost">${i.title}</a></h4>
                                            <div class="post-meta">
                                                <a href="blog?blogId=${i.id}" class="post-meta__item author"><img
                                                        src="assets/images/user-avatar/Avatar.png" width="28" height="28"
                                                        alt=""><span>${accList.get(j.index).displayname}</span></a>

                                                <div class="post-meta__item post-meta__item-social-box">
                                                    ${i.createAt}
                                                </div>
                                            </div>
                                            <p class="excerpt">Did you know that red-staining foods are excellent lymph-movers?
                                                In fact, many plants that were historically used as dyes...</p>
                                            <div class="group-buttons">
                                                <a href="blog?blogId=${i.id}" class="btn readmore">continue reading</a>
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

        <!-- FOOTER -->
        <jsp:include page="./jsptemplate/footer.jsp" />



        <!-- Scroll Top Button -->
        <a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>

        <script src="assets/js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.countdown.min.js"></script>
        <script src="assets/js/slick.min.js"></script>
        <script src="assets/js/biolife.framework.js"></script>
        <script src="assets/js/jquery.nicescroll.min.js"></script>
        <script src="assets/js/functions.js"></script>
    </body>


</html>
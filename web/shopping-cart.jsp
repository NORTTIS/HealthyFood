<%-- 
    Document   : shopping-cart
    Created on : Sep 16, 2024, 4:04:23 PM
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

        <!--     Preloader 
            <div id="biof-loading">
                <div class="biof-loading-center">
                    <div class="biof-loading-center-absolute">
                        <div class="dot dot-one"></div>
                        <div class="dot dot-two"></div>
                        <div class="dot dot-three"></div>
                    </div>
                </div>
            </div>-->

        <!-- HEADER -->
        <jsp:include page="./jsptemplate/header.jsp" />

        <!--Hero Section-->
        <div class="hero-section hero-background">
            <h1 class="page-title">Organic Fruits</h1>
        </div>


        <!--Navigation section-->
        <div class="container">
            <nav class="biolife-nav">
                <ul>
                    <li class="nav-item"><a href="home" class="permal-link">Home</a></li>
                    <li class="nav-item"><span class="current-page">ShoppingCart</span></li>
                </ul>
            </nav>
        </div>

        <div class="page-contain shopping-cart">

            <!-- Main content -->
            <div id="main-content" class="main-content">
                <div class="container">


                    <!--Cart Table-->
                    <div class="shopping-cart-container">
                        <div class="row">
                            <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                                <h3 class="box-title">Your cart items</h3>
                                <form class="shopping-cart-form" action="cart" method="post">
                                    <input type="text" name="ac" value="upd" hidden/>
                                    <table class="shop_table cart-form">
                                        <thead>
                                            <tr>
                                                <th class="product-quantity">In Stock</th>
                                                <th class="product-name">Product Name</th>
                                                <th class="product-price">Price</th>
                                                <th class="product-quantity">Quantity</th>
                                                <th class="product-subtotal">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <c:forEach items="${sessionScope.cart.getItems()}" var="i">

                                                <tr class="cart_item ">
                                                    <td class="product-quantity" data-title="Quantity">
                                                        <span class="price-amount">${i.product.quantityInStock}</span>
                                                    </td>
                                                    <td class="product-thumbnail" data-title="Product Name">
                                                        <input type="text" name="productid[]" value="${i.product.productId}" hidden/>
                                                        <a class="prd-thumb" href="#">
                                                            <figure><img width="113" height="113" src="assets/images/shippingcart/pr-01.jpg" alt="shipping cart"></figure>
                                                        </a>
                                                        <a class="prd-name" href="#">${i.product.name}</a>
                                                        <div class="action">
                                                            <a href="#" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                                            <a href="cart?ac=del&productid=${i.product.productId}" class="remove"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                        </div>
                                                    </td>
                                                    <td class="product-price" data-title="Price">
                                                        <div class="price price-contain">
                                                            <ins><span class="price-amount">${i.product.price}<span class="currencySymbol">đ</span></span></ins>
                                                            <del><span class="price-amount">${i.product.price}<span class="currencySymbol">đ</span></span></del>
                                                        </div>
                                                    </td>
                                                    <td class="product-quantity" data-title="Quantity">
                                                        <div class="quantity-box type1">
                                                            <div class="qty-input">
                                                                <input class="input-qty" type="text" name="product_qty[]" value="${i.quantity}" data-max_value="${i.product.quantityInStock}" data-min_value="1" data-step="1">
                                                                <a href="#" class="qty-btn btn-up"><i class="fa fa-caret-up" aria-hidden="true"></i></a>
                                                                <a href="#" class="qty-btn btn-down"><i class="fa fa-caret-down" aria-hidden="true"></i></a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="product-subtotal" data-title="Total">
                                                        <div class="price price-contain">
                                                            <ins><span class="price-amount">${i.getTotal()}<span class="currencySymbol">đ</span></span></ins>
                                                            <del><span class="price-amount">${i.getTotal()}<span class="currencySymbol">đ</span></span></del>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>

                                            <tr class="cart_item wrap-buttons">
                                                <td class="wrap-btn-control" colspan="4">
                                                    <a class="btn back-to-shop">Back to Shop</a>
                                                    <button class="btn btn-update" type="submit" >update</button>
                                                    <button class="btn btn-clear" type="reset">clear all</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                            <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                                <div class="shpcart-subtotal-block">
                                    <div class="subtotal-line">
                                        <b class="stt-name">Subtotal <span class="sub">(${sessionScope.totalitem} items)</span></b>
                                        <span class="stt-price">${sessionScope.totalcart == null?0:sessionScope.totalcart} đ</span>
                                    </div>
                                    

                                    <div class="btn-checkout">
                                        <a href="checkout" class="btn checkout">Check out</a>
                                    </div>
                                    <div class="biolife-progress-bar">
                                        <table>
                                            <tr>
                                                <td class="first-position">
                                                    <span class="index">${sessionScope.totalcal}</span>
                                                </td>
                                                <c:if test="${sessionScope.totalcal*100/2000 > 100}">
                                                    <td class="mid-position">
                                                        <div class="progress">
                                                            <div class="progress-bar" role="progressbar" style="width: ${sessionScope.totalcal*100/2000}%; background-color:red; " aria-valuenow="25%" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </td>
                                                </c:if>
                                                <c:if test="${sessionScope.totalcal*100/2000 <= 100}">
                                                    <td class="mid-position">
                                                        <div class="progress">
                                                            <div class="progress-bar" role="progressbar" style="width: ${sessionScope.totalcal*100/2000}%; background-color:#7faf51; " aria-valuenow="25%" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </td>
                                                </c:if>

                                                <td class="last-position">
                                                    <span class="index">2000</span>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <p class="pickup-info"><b>Free Pickup</b> is available as soon as today More about shipping and pickup</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Related Product-->
                    <div class="product-related-box single-layout">
                        <div class="biolife-title-box lg-margin-bottom-26px-im">
                            <span class="biolife-icon icon-organic"></span>
                            <span class="subtitle">All the best item for You</span>
                            <h3 class="main-title">Related Products</h3>
                        </div>
                        <ul class="products-list biolife-carousel nav-center-02 nav-none-on-mobile" data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":0,"slidesToShow":5, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":20}},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":10}}]}'>
                            <!--loop-->
                            <li class="product-item">
                                <div class="contain-product layout-default">
                                    <div class="product-thumb">
                                        <a href="#" class="link-to-product">
                                            <img src="assets/images/products/p-13.jpg" alt="dd" width="270" height="270" class="product-thumnail">
                                        </a>
                                    </div>
                                    <div class="info">
                                        <b class="categories">Fresh Fruit</b>
                                        <h4 class="product-title"><a href="#" class="pr-name">National Fresh Fruit112</a></h4>
                                        <div class="price ">
                                            <ins><span class="price-amount">85.00<span class="currencySymbol">đ</span></span></ins>
                                            <del><span class="price-amount">85.00<span class="currencySymbol">đ</span></span></del>
                                        </div>
                                        <div class="slide-down-box">
                                            <p class="message">All products are carefully selected to ensure food safety.</p>
                                            <div class="buttons">
                                                <a href="#" class="btn wishlist-btn"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                <a href="cart?ac=addtocart&productid=2" class="btn add-to-cart-btn"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>add to cart</a>
                                                <a href="#" class="btn compare-btn"><i class="fa fa-random" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="product-item">
                                <div class="contain-product layout-default">
                                    <div class="product-thumb">
                                        <a href="#" class="link-to-product">
                                            <img src="assets/images/products/p-13.jpg" alt="dd" width="270" height="270" class="product-thumnail">
                                        </a>
                                    </div>
                                    <div class="info">
                                        <b class="categories">Fresh Fruit</b>
                                        <h4 class="product-title"><a href="#" class="pr-name">National Fresh Fruit111</a></h4>
                                        <div class="price ">
                                            <ins><span class="price-amount">85.00<span class="currencySymbol">đ</span></span></ins>
                                            <del><span class="price-amount">95.00<span class="currencySymbol">đ</span></span></del>
                                        </div>
                                        <div class="slide-down-box">
                                            <p class="message">All products are carefully selected to ensure food safety.</p>
                                            <div class="buttons">
                                                <a href="#" class="btn wishlist-btn"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                <a href="cart?ac=addtocart&productid=3" class="btn add-to-cart-btn"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>add to cart</a>
                                                <a href="#" class="btn compare-btn"><i class="fa fa-random" aria-hidden="true"></i></a>
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

        <!-- FOOTER -->
        <footer id="footer" class="footer layout-03">
            <div class="footer-content background-footer-03">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-9">
                            <section class="footer-item">
                                <a href="#" class="logo footer-logo"><img src="assets/images/organic-3.png" alt="biolife logo" width="135" height="34"></a>
                                <div class="footer-phone-info">
                                    <i class="biolife-icon icon-head-phone"></i>
                                    <p class="r-info">
                                        <span>Got Questions ?</span>
                                        <span>(700)  9001-1909  (900) 689 -66</span>
                                    </p>
                                </div>
                                <div class="newsletter-block layout-01">
                                    <h4 class="title">Newsletter Signup</h4>
                                    <div class="form-content">
                                        <form action="#" name="new-letter-foter">
                                            <input type="email" class="input-text email" value="" placeholder="Your email here...">
                                            <button type="submit" class="bnt-submit" name="ok">Sign up</button>
                                        </form>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 md-margin-top-5px sm-margin-top-50px xs-margin-top-40px">
                            <section class="footer-item">
                                <h3 class="section-title">Useful Links</h3>
                                <div class="row">
                                    <div class="col-lg-6 col-sm-6 col-xs-6">
                                        <div class="wrap-custom-menu vertical-menu-2">
                                            <ul class="menu">
                                                <li><a href="#">About Us</a></li>
                                                <li><a href="#">About Our Shop</a></li>
                                                <li><a href="#">Secure Shopping</a></li>
                                                <li><a href="#">Delivery infomation</a></li>
                                                <li><a href="#">Privacy Policy</a></li>
                                                <li><a href="#">Our Sitemap</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-sm-6 col-xs-6">
                                        <div class="wrap-custom-menu vertical-menu-2">
                                            <ul class="menu">
                                                <li><a href="#">Who We Are</a></li>
                                                <li><a href="#">Our Services</a></li>
                                                <li><a href="#">Projects</a></li>
                                                <li><a href="#">Contacts Us</a></li>
                                                <li><a href="#">Innovation</a></li>
                                                <li><a href="#">Testimonials</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 md-margin-top-5px sm-margin-top-50px xs-margin-top-40px">
                            <section class="footer-item">
                                <h3 class="section-title">Transport Offices</h3>
                                <div class="contact-info-block footer-layout xs-padding-top-10px">
                                    <ul class="contact-lines">
                                        <li>
                                            <p class="info-item">
                                                <i class="biolife-icon icon-location"></i>
                                                <b class="desc">7563 St. Vicent Place, Glasgow, Greater Newyork NH7689, UK </b>
                                            </p>
                                        </li>
                                        <li>
                                            <p class="info-item">
                                                <i class="biolife-icon icon-phone"></i>
                                                <b class="desc">Phone: (+067) 234 789  (+068) 222 888</b>
                                            </p>
                                        </li>
                                        <li>
                                            <p class="info-item">
                                                <i class="biolife-icon icon-letter"></i>
                                                <b class="desc">Email:  contact@company.com</b>
                                            </p>
                                        </li>
                                        <li>
                                            <p class="info-item">
                                                <i class="biolife-icon icon-clock"></i>
                                                <b class="desc">Hours: 7 Days a week from 10:00 am</b>
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="biolife-social inline">
                                    <ul class="socials">
                                        <li><a href="#" title="twitter" class="socail-btn"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        <li><a href="#" title="facebook" class="socail-btn"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#" title="pinterest" class="socail-btn"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                        <li><a href="#" title="youtube" class="socail-btn"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                        <li><a href="#" title="instagram" class="socail-btn"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </section>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="separator sm-margin-top-70px xs-margin-top-40px"></div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-xs-12">
                            <div class="copy-right-text"><p><a href="templateshub.net">Templates Hub</a></p></div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-xs-12">
                            <div class="payment-methods">
                                <ul>
                                    <li><a href="#" class="payment-link"><img src="assets/images/card1.jpg" width="51" height="36" alt=""></a></li>
                                    <li><a href="#" class="payment-link"><img src="assets/images/card2.jpg" width="51" height="36" alt=""></a></li>
                                    <li><a href="#" class="payment-link"><img src="assets/images/card3.jpg" width="51" height="36" alt=""></a></li>
                                    <li><a href="#" class="payment-link"><img src="assets/images/card4.jpg" width="51" height="36" alt=""></a></li>
                                    <li><a href="#" class="payment-link"><img src="assets/images/card5.jpg" width="51" height="36" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!--Footer For Mobile-->
        <!--    <div class="mobile-footer">
                <div class="mobile-footer-inner">
                    <div class="mobile-block block-menu-main">
                        <a class="menu-bar menu-toggle btn-toggle" data-object="open-mobile-menu" href="javascript:void(0)">
                            <span class="fa fa-bars"></span>
                            <span class="text">Menu</span>
                        </a>
                    </div>
                    <div class="mobile-block block-sidebar">
                        <a class="menu-bar filter-toggle btn-toggle" data-object="open-mobile-filter" href="javascript:void(0)">
                            <i class="fa fa-sliders" aria-hidden="true"></i>
                            <span class="text">Sidebar</span>
                        </a>
                    </div>
                    <div class="mobile-block block-minicart">
                        <a class="link-to-cart" href="#">
                            <span class="fa fa-shopping-bag" aria-hidden="true"></span>
                            <span class="text">Cart</span>
                        </a>
                    </div>
                    <div class="mobile-block block-global">
                        <a class="menu-bar myaccount-toggle btn-toggle" data-object="global-panel-opened" href="javascript:void(0)">
                            <span class="fa fa-globe"></span>
                            <span class="text">Global</span>
                        </a>
                    </div>
                </div>
            </div>
        
            <div class="mobile-block-global">
                <div class="biolife-mobile-panels">
                    <span class="biolife-current-panel-title">Global</span>
                    <a class="biolife-close-btn" data-object="global-panel-opened" href="#">&times;</a>
                </div>
                <div class="block-global-contain">
                    <div class="glb-item my-account">
                        <b class="title">My Account</b>
                        <ul class="list">
                            <li class="list-item"><a href="#">Login/register</a></li>
                            <li class="list-item"><a href="#">Wishlist <span class="index">(8)</span></a></li>
                            <li class="list-item"><a href="#">Checkout</a></li>
                        </ul>
                    </div>
                    <div class="glb-item currency">
                        <b class="title">Currency</b>
                        <ul class="list">
                            <li class="list-item"><a href="#">€ EUR (Euro)</a></li>
                            <li class="list-item"><a href="#">$ USD (Dollar)</a></li>
                            <li class="list-item"><a href="#">£ GBP (Pound)</a></li>
                            <li class="list-item"><a href="#">¥ JPY (Yen)</a></li>
                        </ul>
                    </div>
                    <div class="glb-item languages">
                        <b class="title">Language</b>
                        <ul class="list inline">
                            <li class="list-item"><a href="#"><img src="assets/images/languages/us.jpg" alt="flag" width="24" height="18"></a></li>
                            <li class="list-item"><a href="#"><img src="assets/images/languages/fr.jpg" alt="flag" width="24" height="18"></a></li>
                            <li class="list-item"><a href="#"><img src="assets/images/languages/ger.jpg" alt="flag" width="24" height="18"></a></li>
                            <li class="list-item"><a href="#"><img src="assets/images/languages/jap.jpg" alt="flag" width="24" height="18"></a></li>
                        </ul>
                    </div>
                </div>
            </div>-->

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

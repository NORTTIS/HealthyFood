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

        <!-- Preloader loading-->
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
        <header id="header" class="header-area style-01 layout-03">
            <div class="header-top bg-main hidden-xs">
                <div class="container">
                    <div class="top-bar left">
                        <ul class="horizontal-menu">
                            <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i>Organic@company.com</a></li>
                            <li><a href="#">CHỌN ĂN SẠCH, SỐNG LÀNH MẠNH</a></li>
                        </ul>
                    </div>
                    <div class="top-bar right">
                        <ul class="social-list">
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                        </ul>
                        <ul class="horizontal-menu">

                            <li class="horz-menu-item lang">
                                <select name="language">
                                    <option value="VND" selected>VietNam (VND)</option>
                                    <option value="en">English (USD)</option>

                                </select>
                            </li>
                            <li><a href="login.html" class="login-link"><i
                                        class="biolife-icon icon-login"></i>Login/Register</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header-middle biolife-sticky-object ">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-2 col-md-6 col-xs-6">
                            <a href="home-03-green.html" class="biolife-logo"><img src="assets/images/organic-3-green.png"
                                                                                   alt="biolife logo" width="135" height="36"></a>
                        </div>
                        <div class="col-lg-6 col-md-7 hidden-sm hidden-xs">
                            <div class="primary-menu">
                                <ul class="menu biolife-menu clone-main-menu clone-primary-menu" id="primary-menu"
                                    data-menuname="main menu">
                                    <li class="menu-item"><a href="#">Home</a></li>
                                    <li class="menu-item menu-item-has-children has-megamenu">
                                        <a href="#" class="menu-name" data-title="Shop">Shop</a>
                                        <div class="wrap-megamenu lg-width-900 md-width-750">
                                            <div class="mega-content">
                                                <div
                                                    class="col-lg-3 col-md-3 col-xs-12 md-margin-bottom-0 xs-margin-bottom-25">
                                                    <div class="wrap-custom-menu vertical-menu">
                                                        <h4 class="menu-title">Fresh Berries</h4>
                                                        <ul class="menu">
                                                            <li><a href="#">Fruit & Nut Gifts</a></li>
                                                            <li><a href="#">Mixed Fruits</a></li>
                                                            <li><a href="#">Oranges</a></li>
                                                            <li><a href="#">Bananas & Plantains</a></li>
                                                            <li><a href="#">Fresh Gala Apples</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div
                                                    class="col-lg-3 col-md-3 col-xs-12 md-margin-bottom-0 xs-margin-bottom-25">
                                                    <div class="wrap-custom-menu vertical-menu">
                                                        <h4 class="menu-title">Vegetables</h4>
                                                        <ul class="menu">
                                                            <li><a href="#">Berries</a></li>
                                                            <li><a href="#">Pears</a></li>
                                                            <li><a href="#">Chili Peppers</a></li>
                                                            <li><a href="#">Fresh Avocado</a></li>
                                                            <li><a href="#">Grapes</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div
                                                    class="col-lg-3 col-md-3 col-xs-12 md-margin-bottom-0 xs-margin-bottom-25">
                                                    <div class="wrap-custom-menu vertical-menu ">
                                                        <h4 class="menu-title">Fresh Fruits</h4>
                                                        <ul class="menu">
                                                            <li><a href="#">Basket of apples</a></li>
                                                            <li><a href="#">Strawberry</a></li>
                                                            <li><a href="#">Blueberry</a></li>
                                                            <li><a href="#">Orange</a></li>
                                                            <li><a href="#">Pineapple</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div
                                                    class="col-lg-3 col-md-3 col-xs-12 md-margin-bottom-0 xs-margin-bottom-25">
                                                    <div class="wrap-custom-menu vertical-menu">
                                                        <h4 class="menu-title">Featured Products</h4>
                                                        <ul class="menu">
                                                            <li><a href="#">Coffee Creamers</a></li>
                                                            <li><a href="#">Mayonnaise</a></li>
                                                            <li><a href="#">Almond Milk</a></li>
                                                            <li><a href="#">Fruit Jam</a></li>
                                                            <li><a href="#">Beverages</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="menu-item menu-item-has-children has-child">
                                        <a href="#" class="menu-name" data-title="Product">Product</a>
                                        <ul class="sub-menu">
                                            <li class="menu-item"><a href="#">Omelettes</a></li>
                                            <li class="menu-item"><a href="#">Breakfast Scrambles</a></li>
                                            <li class="menu-item menu-item-has-children has-child"><a href="#"
                                                                                                      class="menu-name" data-title="Eggs & other considerations">Eggs & other
                                                    considerations</a>
                                                <ul class="sub-menu">
                                                    <li class="menu-item"><a href="#">Classic Breakfast</a></li>
                                                    <li class="menu-item"><a href="#">Huevos Rancheros</a></li>
                                                    <li class="menu-item"><a href="#">Everything Egg Sandwich</a></li>
                                                    <li class="menu-item"><a href="#">Egg Sandwich</a></li>
                                                    <li class="menu-item"><a href="#">Vegan Burrito</a></li>
                                                    <li class="menu-item"><a href="#">Biscuits and Gravy</a></li>
                                                    <li class="menu-item"><a href="#">Bacon Avo Egg Sandwich</a></li>
                                                </ul>
                                            </li>
                                            <li class="menu-item"><a href="#">Griddle</a></li>
                                            <li class="menu-item menu-item-has-children has-child"><a href="#"
                                                                                                      class="menu-name" data-title="Sides & Extras">Sides & Extras</a>
                                                <ul class="sub-menu">
                                                    <li class="menu-item"><a href="#">Breakfast Burrito</a></li>
                                                    <li class="menu-item"><a href="#">Crab Cake Benedict</a></li>
                                                    <li class="menu-item"><a href="#">Corned Beef Hash</a></li>
                                                    <li class="menu-item"><a href="#">Steak & Eggs</a></li>
                                                    <li class="menu-item"><a href="#">Oatmeal</a></li>
                                                    <li class="menu-item"><a href="#">Fruit & Yogurt Parfait</a></li>
                                                </ul>
                                            </li>
                                            <li class="menu-item"><a href="#">Biscuits</a></li>
                                            <li class="menu-item"><a href="#">Seasonal Fruit Plate</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item">
                                        <a href="#" class="menu-name" data-title="Pages">Location</a>
                                    </li>
                                    <li class="menu-item menu-item-has-children has-megamenu">
                                        <a href="#" class="menu-name" data-title="Blog">Blog</a>
                                        <div class="wrap-megamenu lg-width-800 md-width-750">
                                            <div class="mega-content">
                                                <div class="col-lg-3 col-md-3 col-xs-6">
                                                    <div class="wrap-custom-menu vertical-menu">
                                                        <h4 class="menu-title">Blog Categories</h4>
                                                        <ul class="menu">
                                                            <li><a href="#">Beauty (30)</a></li>
                                                            <li><a href="#">Fashion (50)</a></li>
                                                            <li><a href="#">Food (10)</a></li>
                                                            <li><a href="#">Life Style (60)</a></li>
                                                            <li><a href="#">Travel (10)</a></li>
                                                            <li><a href="#">Nutrition (35)</a></li>
                                                            <li><a href="#">Food Decoration (45)</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3 col-md-3 col-xs-6">
                                                    <div class="wrap-custom-menu vertical-menu">
                                                        <h4 class="menu-title">Featured Posts</h4>
                                                        <ul class="menu">
                                                            <li><a href="#">Post example<sup>#1</sup></a></li>
                                                            <li><a href="#">Post example<sup>#2</sup></a></li>
                                                            <li><a href="#">Post example<sup>#3</sup></a></li>
                                                            <li><a href="#">Post example<sup>#4</sup></a></li>
                                                            <li><a href="#">Post example<sup>#5</sup></a></li>
                                                            <li><a href="#">Post example<sup>#6</sup></a></li>
                                                            <li><a href="#">Post example<sup>#7</sup></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-xs-12 md-margin-top-0 xs-margin-top-25px">
                                                    <div class="block-posts">
                                                        <h4 class="menu-title">Recent Posts</h4>
                                                        <ul class="posts">
                                                            <li>
                                                                <div class="block-post-item">
                                                                    <div class="thumb"><a href="#"><img
                                                                                src="assets/images/megamenu/thumb-05.jpg"
                                                                                width="100" height="73" alt=""></a></div>
                                                                    <div class="left-info">
                                                                        <h4 class="post-name"><a href="#">Ashwagandha: The
                                                                                #1 Herb in the World for Anxiety?</a></h4>
                                                                        <span class="p-date">Jan 05, 2019</span>
                                                                        <span class="p-comment">2 Comments</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="block-post-item">
                                                                    <div class="thumb"><a href="#"><img
                                                                                src="assets/images/megamenu/thumb-06.jpg"
                                                                                width="100" height="73" alt=""></a></div>
                                                                    <div class="left-info">
                                                                        <h4 class="post-name"><a href="#">Ashwagandha: The
                                                                                #1 Herb in the World for Anxiety?</a></h4>
                                                                        <span class="p-date">May 15, 2019</span>
                                                                        <span class="p-comment">8 Comments</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="block-post-item">
                                                                    <div class="thumb"><a href="#"><img
                                                                                src="assets/images/megamenu/thumb-07.jpg"
                                                                                width="100" height="73" alt=""></a></div>
                                                                    <div class="left-info">
                                                                        <h4 class="post-name"><a href="#">Ashwagandha: The
                                                                                #1 Herb in the World for Anxiety?</a></h4>
                                                                        <span class="p-date">Apr 26, 2019</span>
                                                                        <span class="p-comment">10 Comments</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="menu-item"><a href="contact.html">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-md-6 col-xs-6">
                            <div class="biolife-cart-info">
                                <div class="mobile-search">
                                    <a href="javascript:void(0)" class="open-searchbox"><i
                                            class="biolife-icon icon-search"></i></a>
                                    <div class="mobile-search-content">
                                        <form action="#" class="form-search" name="mobile-seacrh" method="get">
                                            <a href="#" class="btn-close"><span
                                                    class="biolife-icon icon-close-menu"></span></a>
                                            <input type="text" name="s" class="input-text" value=""
                                                   placeholder="Search here...">
                                            <select name="category">
                                                <option value="-1" selected>All Categories</option>
                                                <option value="vegetables">Vegetables</option>
                                                <option value="fresh_berries">Fresh Berries</option>
                                                <option value="ocean_foods">Ocean Foods</option>
                                                <option value="butter_eggs">Butter & Eggs</option>
                                                <option value="fastfood">Fastfood</option>
                                                <option value="fresh_meat">Fresh Meat</option>
                                                <option value="fresh_onion">Fresh Onion</option>
                                                <option value="papaya_crisps">Papaya & Crisps</option>
                                                <option value="oatmeal">Oatmeal</option>
                                            </select>
                                            <button type="submit" class="btn-submit">go</button>
                                        </form>
                                    </div>
                                </div>
                                <div class="wishlist-block hidden-sm hidden-xs">
                                    <a href="#" class="link-to">
                                        <span class="icon-qty-combine">
                                            <i class="icon-heart-bold biolife-icon"></i>
                                            <span class="qty">4</span>
                                        </span>
                                    </a>
                                </div>
                                <div class="minicart-block">
                                    <div class="minicart-contain">
                                        <a href="javascript:void(0)" class="link-to">
                                            <span class="icon-qty-combine">
                                                <i class="icon-cart-mini biolife-icon"></i>
                                                <span class="qty">8</span>
                                            </span>
                                            <span class="title">My Cart -</span>
                                            <span class="sub-total">0.00VND</span>
                                        </a>
                                        <div class="cart-content">
                                            <div class="cart-inner">
                                                <ul class="products">
                                                    <li>
                                                        <c:if test="${ sessionScope.cart==null}"><p style="text-align: center;margin-top: 15px;">You have no products in your cart!</p></c:if>  </li>
                                                        <c:forEach items="${sessionScope.cart.getItems()}" var="i">
                                                        <li>
                                                            <input type="text" name="productid[]" value="${i.product.productId}" hidden/>
                                                            <div class="minicart-item">
                                                                <div class="thumb">
                                                                    <a href="single-product-simple.html"><img src="assets/images/minicart/pr-01.jpg"
                                                                                                              width="90" height="90" alt="National Fresh"></a>
                                                                </div>
                                                                <div class="left-info">
                                                                    <div>
                                                                        <div class="product-title"><a href="#"
                                                                                                      class="product-name">${i.product.name}</a></div>
                                                                        <div class="qty">
                                                                            <label for="cart[id123][qty]">Qty:</label>

                                                                            <span class="in-qty" disabledc> ${i.quantity}</span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="price">
                                                                        <ins><span class="price-amount">${i.product.price}<span class="currencySymbol">đ</span></span></ins>
                                                                        <del><span class="price-amount">${i.product.price}<span class="currencySymbol">đ</span></span></del>
                                                                    </div>

                                                                </div>

                                                            </div>
                                                        </li>
                                                    </c:forEach>


                                                </ul>
                                                <p class="btn-control">
                                                    <a href="cart?ac=show" class="btn view-cart">view cart</a>
                                                    <a href="#" class="btn">checkout</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="mobile-menu-toggle">
                                    <a class="btn-toggle" data-object="open-mobile-menu" href="javascript:void(0)">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom hidden-sm hidden-xs">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-4">
                            <div class="vertical-menu vertical-category-block">
                                <div class="block-title">
                                    <span class="menu-icon">
                                        <span class="line-1"></span>
                                        <span class="line-2"></span>
                                        <span class="line-3"></span>
                                    </span>
                                    <span class="menu-title">All departments</span>
                                    <span class="angle" data-tgleclass="fa fa-caret-down"><i class="fa fa-caret-up"
                                                                                             aria-hidden="true"></i></span>
                                </div>
                                <div class="wrap-menu">
                                    <ul class="menu clone-main-menu">
                                        <li class="menu-item menu-item-has-children has-megamenu">
                                            <a href="#" class="menu-name" data-title="Fruit & Nut Gifts"><i
                                                    class="biolife-icon icon-fruits"></i>Fruit & Nut Gifts</a>
                                            <div class="wrap-megamenu lg-width-900 md-width-640">
                                                <div class="mega-content">
                                                    <div class="row">
                                                        <div
                                                            class="col-lg-3 col-md-4 col-sm-12 xs-margin-bottom-25 md-margin-bottom-0">
                                                            <div class="wrap-custom-menu vertical-menu">
                                                                <h4 class="menu-title">Fresh Fuits</h4>
                                                                <ul class="menu">
                                                                    <li><a href="#">Fruit & Nut Gifts</a></li>
                                                                    <li><a href="#">Mixed Fruits</a></li>
                                                                    <li><a href="#">Oranges</a></li>
                                                                    <li><a href="#">Bananas & Plantains</a></li>
                                                                    <li><a href="#">Fresh Gala Apples</a></li>
                                                                    <li><a href="#">Berries</a></li>
                                                                    <li><a href="#">Pears</a></li>
                                                                    <li><a href="#">Produce</a></li>
                                                                    <li><a href="#">Snack Foods</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-lg-3 col-md-4 col-sm-12 lg-padding-left-23 xs-margin-bottom-25 md-margin-bottom-0">
                                                            <div class="wrap-custom-menu vertical-menu">
                                                                <h4 class="menu-title">Nut Gifts</h4>
                                                                <ul class="menu">
                                                                    <li><a href="#">Non-Dairy Coffee Creamers</a></li>
                                                                    <li><a href="#">Coffee Creamers</a></li>
                                                                    <li><a href="#">Mayonnaise</a></li>
                                                                    <li><a href="#">Almond Milk</a></li>
                                                                    <li><a href="#">Ghee</a></li>
                                                                    <li><a href="#">Beverages</a></li>
                                                                    <li><a href="#">Ranch Salad Dressings</a></li>
                                                                    <li><a href="#">Hemp Milk</a></li>
                                                                    <li><a href="#">Nuts & Seeds</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-lg-6 col-md-4 col-sm-12 lg-padding-left-50 xs-margin-bottom-25 md-margin-bottom-0">
                                                            <div class="biolife-products-block max-width-270">
                                                                <h4 class="menu-title">Bestseller Products</h4>
                                                                <ul class="products-list default-product-style biolife-carousel nav-none-after-1k2 nav-center"
                                                                    data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":30,"slidesToShow":1, "responsive":[{"breakpoint":767, "settings":{ "arrows": false}}]}'>
                                                                    <li class="product-item">
                                                                        <div class="contain-product none-overlay">
                                                                            <div class="product-thumb">
                                                                                <a href="#" class="link-to-product">
                                                                                    <img src="assets/images/products/p-08.jpg"
                                                                                         alt="dd" width="270" height="270"
                                                                                         class="product-thumnail">
                                                                                </a>
                                                                            </div>
                                                                            <div class="info">
                                                                                <b class="categories">Fresh Fruit</b>
                                                                                <h4 class="product-title"><a href="#"
                                                                                                             class="pr-name">National Fresh
                                                                                        Fruit</a></h4>
                                                                                <div class="price">
                                                                                    <ins><span class="price-amount"><span
                                                                                                class="currencySymbol">80.00</span>VND</span></ins>
                                                                                    <del><span class="price-amount"><span
                                                                                                class="currencySymbol">90.00</span>VND</span></del>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="product-item">
                                                                        <div class="contain-product none-overlay">
                                                                            <div class="product-thumb">
                                                                                <a href="#" class="link-to-product">
                                                                                    <img src="assets/images/products/p-11.jpg"
                                                                                         alt="dd" width="270" height="270"
                                                                                         class="product-thumnail">
                                                                                </a>
                                                                            </div>
                                                                            <div class="info">
                                                                                <b class="categories">Fresh Fruit</b>
                                                                                <h4 class="product-title"><a href="#"
                                                                                                             class="pr-name">National Fresh
                                                                                        Fruit</a></h4>
                                                                                <div class="price">
                                                                                    <ins><span class="price-amount"><span
                                                                                                class="currencySymbol">80.00</span>VND</span></ins>
                                                                                    <del><span class="price-amount"><span
                                                                                                class="currencySymbol">90.00</span>VND</span></del>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="product-item">
                                                                        <div class="contain-product none-overlay">
                                                                            <div class="product-thumb">
                                                                                <a href="#" class="link-to-product">
                                                                                    <img src="assets/images/products/p-15.jpg"
                                                                                         alt="dd" width="270" height="270"
                                                                                         class="product-thumnail">
                                                                                </a>
                                                                            </div>
                                                                            <div class="info">
                                                                                <b class="categories">Fresh Fruit</b>
                                                                                <h4 class="product-title"><a href="#"
                                                                                                             class="pr-name">National Fresh
                                                                                        Fruit</a></h4>
                                                                                <div class="price">
                                                                                    <ins><span class="price-amount"><span
                                                                                                class="currencySymbol">80.00</span>VND</span></ins>
                                                                                    <del><span class="price-amount"><span
                                                                                                class="currencySymbol">90.00</span>VND</span></del>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 md-margin-top-9">
                                                            <div class="biolife-brand">
                                                                <ul class="brands">
                                                                    <li><a href="#"><img
                                                                                src="assets/images/megamenu/brand-organic.png"
                                                                                width="161" height="136" alt="organic"></a>
                                                                    </li>
                                                                    <li><a href="#"><img
                                                                                src="assets/images/megamenu/brand-explore.png"
                                                                                width="160" height="136" alt="explore"></a>
                                                                    </li>
                                                                    <li><a href="#"><img
                                                                                src="assets/images/megamenu/brand-organic-2.png"
                                                                                width="99" height="136" alt="organic 2"></a>
                                                                    </li>
                                                                    <li><a href="#"><img
                                                                                src="assets/images/megamenu/brand-eco-teas.png"
                                                                                width="164" height="136" alt="eco teas"></a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menu-item menu-item-has-children has-megamenu">
                                            <a href="#" class="menu-name" data-title="Vegetables"><i
                                                    class="biolife-icon icon-broccoli-1"></i>Vegetables</a>
                                            <div class="wrap-megamenu lg-width-900 md-width-640 background-mega-01">
                                                <div class="mega-content">
                                                    <div class="row">
                                                        <div
                                                            class="col-lg-3 col-md-4 col-sm-12 xs-margin-bottom-25 md-margin-bottom-0">
                                                            <div class="wrap-custom-menu vertical-menu">
                                                                <h4 class="menu-title">Vegetables</h4>
                                                                <ul class="menu">
                                                                    <li><a href="#">Fruit & Nut Gifts</a></li>
                                                                    <li><a href="#">Mixed Fruits</a></li>
                                                                    <li><a href="#">Oranges</a></li>
                                                                    <li><a href="#">Bananas & Plantains</a></li>
                                                                    <li><a href="#">Fresh Gala Apples</a></li>
                                                                    <li><a href="#">Berries</a></li>
                                                                    <li><a href="#">Pears</a></li>
                                                                    <li><a href="#">Produce</a></li>
                                                                    <li><a href="#">Snack Foods</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-lg-4 col-md-4 col-sm-12 lg-padding-left-23 xs-margin-bottom-25 md-margin-bottom-0">
                                                            <div class="wrap-custom-menu vertical-menu">
                                                                <h4 class="menu-title">Gifts</h4>
                                                                <ul class="menu">
                                                                    <li><a href="#">Non-Dairy Coffee Creamers</a></li>
                                                                    <li><a href="#">Coffee Creamers</a></li>
                                                                    <li><a href="#">Mayonnaise</a></li>
                                                                    <li><a href="#">Almond Milk</a></li>
                                                                    <li><a href="#">Ghee</a></li>
                                                                    <li><a href="#">Beverages</a></li>
                                                                    <li><a href="#">Ranch Salad Dressings</a></li>
                                                                    <li><a href="#">Hemp Milk</a></li>
                                                                    <li><a href="#">Nuts & Seeds</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-lg-5 col-md-4 col-sm-12 lg-padding-left-57 md-margin-bottom-30">
                                                            <div class="biolife-brand vertical md-boder-left-30">
                                                                <h4 class="menu-title">Hot Brand</h4>
                                                                <ul class="brands">
                                                                    <li><a href="#"><img
                                                                                src="assets/images/megamenu/v-brand-organic.png"
                                                                                width="167" height="74" alt="organic"></a>
                                                                    </li>
                                                                    <li><a href="#"><img
                                                                                src="assets/images/megamenu/v-brand-explore.png"
                                                                                width="167" height="72" alt="explore"></a>
                                                                    </li>
                                                                    <li><a href="#"><img
                                                                                src="assets/images/megamenu/v-brand-organic-2.png"
                                                                                width="167" height="99" alt="organic 2"></a>
                                                                    </li>
                                                                    <li><a href="#"><img
                                                                                src="assets/images/megamenu/v-brand-eco-teas.png"
                                                                                width="167" height="67" alt="eco teas"></a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menu-item menu-item-has-children has-megamenu">
                                            <a href="#" class="menu-name" data-title="Fresh Berries"><i
                                                    class="biolife-icon icon-grape"></i>Fresh Berries</a>
                                            <div class="wrap-megamenu lg-width-900 md-width-640 background-mega-02">
                                                <div class="mega-content">
                                                    <div class="row">
                                                        <div
                                                            class="col-lg-3 col-md-4 sm-col-12 md-margin-bottom-83 xs-margin-bottom-25">
                                                            <div class="wrap-custom-menu vertical-menu">
                                                                <h4 class="menu-title">Fresh Berries</h4>
                                                                <ul class="menu">
                                                                    <li><a href="#">Fruit & Nut Gifts</a></li>
                                                                    <li><a href="#">Mixed Fruits</a></li>
                                                                    <li><a href="#">Oranges</a></li>
                                                                    <li><a href="#">Bananas & Plantains</a></li>
                                                                    <li><a href="#">Fresh Gala Apples</a></li>
                                                                    <li><a href="#">Berries</a></li>
                                                                    <li><a href="#">Pears</a></li>
                                                                    <li><a href="#">Produce</a></li>
                                                                    <li><a href="#">Snack Foods</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-lg-3 col-md-4 sm-col-12 lg-padding-left-23 xs-margin-bottom-36px md-margin-bottom-0">
                                                            <div class="wrap-custom-menu vertical-menu">
                                                                <h4 class="menu-title">Gifts</h4>
                                                                <ul class="menu">
                                                                    <li><a href="#">Non-Dairy Coffee Creamers</a></li>
                                                                    <li><a href="#">Coffee Creamers</a></li>
                                                                    <li><a href="#">Mayonnaise</a></li>
                                                                    <li><a href="#">Almond Milk</a></li>
                                                                    <li><a href="#">Ghee</a></li>
                                                                    <li><a href="#">Beverages</a></li>
                                                                    <li><a href="#">Ranch Salad Dressings</a></li>
                                                                    <li><a href="#">Hemp Milk</a></li>
                                                                    <li><a href="#">Nuts & Seeds</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-lg-6 col-md-4 sm-col-12 lg-padding-left-25 md-padding-top-55">
                                                            <div class="biolife-banner layout-01">
                                                                <h3 class="top-title">Farm Fresh</h3>
                                                                <p class="content"> All the Lorem Ipsum generators on the
                                                                    Internet tend.</p>
                                                                <b class="bottomm-title">Berries Series</b>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menu-item"><a href="#" class="menu-name" data-title="Ocean Foods"><i
                                                    class="biolife-icon icon-fish"></i>Ocean Foods</a></li>
                                        <li class="menu-item menu-item-has-children has-child">
                                            <a href="#" class="menu-name" data-title="Butter & Eggs"><i
                                                    class="biolife-icon icon-honey"></i>Butter & Eggs</a>
                                            <ul class="sub-menu">
                                                <li class="menu-item"><a href="#">Omelettes</a></li>
                                                <li class="menu-item"><a href="#">Breakfast Scrambles</a></li>
                                                <li class="menu-item menu-item-has-children has-child"><a href="#"
                                                                                                          class="menu-name" data-title="Eggs & other considerations">Eggs &
                                                        other considerations</a>
                                                    <ul class="sub-menu">
                                                        <li class="menu-item"><a href="#">Classic Breakfast</a></li>
                                                        <li class="menu-item"><a href="#">Huevos Rancheros</a></li>
                                                        <li class="menu-item"><a href="#">Everything Egg Sandwich</a></li>
                                                        <li class="menu-item"><a href="#">Egg Sandwich</a></li>
                                                        <li class="menu-item"><a href="#">Vegan Burrito</a></li>
                                                        <li class="menu-item"><a href="#">Biscuits and Gravy</a></li>
                                                        <li class="menu-item"><a href="#">Bacon Avo Egg Sandwich</a></li>
                                                    </ul>
                                                </li>
                                                <li class="menu-item"><a href="#">Griddle</a></li>
                                                <li class="menu-item menu-item-has-children has-child"><a href="#"
                                                                                                          class="menu-name" data-title="Sides & Extras">Sides & Extras</a>
                                                    <ul class="sub-menu">
                                                        <li class="menu-item"><a href="#">Breakfast Burrito</a></li>
                                                        <li class="menu-item"><a href="#">Crab Cake Benedict</a></li>
                                                        <li class="menu-item"><a href="#">Corned Beef Hash</a></li>
                                                        <li class="menu-item"><a href="#">Steak & Eggs</a></li>
                                                        <li class="menu-item"><a href="#">Oatmeal</a></li>
                                                        <li class="menu-item"><a href="#">Fruit & Yogurt Parfait</a></li>
                                                    </ul>
                                                </li>
                                                <li class="menu-item"><a href="#">Biscuits</a></li>
                                                <li class="menu-item"><a href="#">Seasonal Fruit Plate</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item"><a href="#" class="menu-title"><i
                                                    class="biolife-icon icon-fast-food"></i>Fastfood</a></li>
                                        <li class="menu-item"><a href="#" class="menu-title"><i
                                                    class="biolife-icon icon-beef"></i>Fresh Meat</a></li>
                                        <li class="menu-item"><a href="#" class="menu-title"><i
                                                    class="biolife-icon icon-onions"></i>Fresh Onion</a></li>
                                        <li class="menu-item"><a href="#" class="menu-title"><i
                                                    class="biolife-icon icon-avocado"></i>Papaya & Crisps</a></li>
                                        <li class="menu-item"><a href="#" class="menu-title"><i
                                                    class="biolife-icon icon-contain"></i>Oatmeal</a></li>
                                        <li class="menu-item"><a href="#" class="menu-title"><i
                                                    class="biolife-icon icon-fresh-juice"></i>Fresh Bananas & Plantains</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-8 padding-top-2px">
                            <div class="header-search-bar layout-01">
                                <form action="#" class="form-search" name="desktop-seacrh" method="get">
                                    <input type="text" name="s" class="input-text" value="" placeholder="Search here...">
                                    <select name="category">
                                        <option value="-1" selected>All Categories</option>
                                        <option value="vegetables">Vegetables</option>
                                        <option value="fresh_berries">Fresh Berries</option>
                                        <option value="ocean_foods">Ocean Foods</option>
                                        <option value="butter_eggs">Butter & Eggs</option>
                                        <option value="fastfood">Fastfood</option>
                                        <option value="fresh_meat">Fresh Meat</option>
                                        <option value="fresh_onion">Fresh Onion</option>
                                        <option value="papaya_crisps">Papaya & Crisps</option>
                                        <option value="oatmeal">Oatmeal</option>
                                    </select>
                                    <button type="submit" class="btn-submit"><i
                                            class="biolife-icon icon-search"></i></button>
                                </form>
                            </div>
                            <div class="live-info">
                                <p class="telephone"><i class="fa fa-phone" aria-hidden="true"></i><b class="phone-number">
                                        123 456 7891</b></p>
                                <p class="working-time">Mon-Fri: 8:30am-7:30pm; Sat-Sun: 9:30am-4:30pm</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

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
                                        <a href="#" class="btn btn-bold">Shop now</a>
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
                                        <a href="#" class="btn btn-bold">Shop now</a>
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
                                        <a href="#" class="btn btn-bold">Shop now</a>
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
                                        <a href="#" class="btn btn-bold">Shop now</a>
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
                                        <a href="#" class="btn btn-bold">Shop now</a>
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
                                        <a href="#" class="btn btn-bold">Shop now</a>
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
                                        <a href="#" class="btn btn-bold">Shop now</a>
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
                                        <a href="#" class="btn btn-bold">Shop now</a>
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
                                        <a href="#" class="btn btn-bold">Shop now</a>
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
                                        <a href="#" class="btn btn-bold">Shop now</a>
                                        <a href="#" class="btn btn-thin">View lookbook</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>

                <!--Block 02: Banners-->
                <div class="special-slide">
                    <div class="container">
                        <!--foreache hear-->
                        <ul class="biolife-carousel dots_ring_style"
                            data-slick='{"arrows": false, "dots": true, "slidesMargin": 30, "slidesToShow": 1, "infinite": true, "speed": 800, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 1}},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":20, "dots": false}},{"breakpoint":480, "settings":{ "slidesToShow": 1}}]}'>
                            <li>
                                <div class="slide-contain biolife-banner__special">
                                    <div class="banner-contain">
                                        <div class="media">
                                            <a href="#" class="bn-link">
                                                <figure><img src="assets/images/home-03/bn_special_org.jpg" width="616"
                                                             height="483" alt=""></figure>
                                            </a>
                                        </div>
                                        <div class="text-content">
                                            <b class="first-line">Pomegranate11111111</b>
                                            <span class="second-line">Organic Heaven Made1</span>
                                            <span class="third-line">Easy <i>Healthy, Happy Life</i></span>
                                            <div class="product-detail">
                                                <h4 class="product-name">National Fresh Fruit Production</h4>
                                                <div class="price price-contain">
                                                    <ins><span class="price-amount"><span
                                                                class="currencySymbol">80.00</span>VND</span></ins>
                                                    <del><span class="price-amount"><span
                                                                class="currencySymbol">VND</span>VND</span></del>
                                                </div>
                                                <div class="buttons">
                                                    <a href="cart?ac=addtocart&productid=1" class="btn add-to-cart-btn"></i>add to cart</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>

                        </ul>
                        <div class="biolife-service type01 biolife-service__type01 sm-margin-top-0 xs-margin-top-45px">
                            <b class="txt-show-01">100%Nature</b>
                            <i class="txt-show-02">Fresh Fruits</i>
                            <ul class="services-list">
                                <li>
                                    <div class="service-inner color-reverse">
                                        <span class="number">1</span>
                                        <span class="biolife-icon icon-beer"></span>
                                        <a class="srv-name" href="#">full stamped product</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="service-inner color-reverse">
                                        <span class="number">2</span>
                                        <span class="biolife-icon icon-schedule"></span>
                                        <a class="srv-name" href="#">place and delivery on time</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="service-inner color-reverse">
                                        <span class="number">3</span>
                                        <span class="biolife-icon icon-car"></span>
                                        <a class="srv-name" href="#">Free shipping in the city</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!--Block 03: Product Tabs-->
                <div class="product-tab z-index-20 sm-margin-top-193px xs-margin-top-30px">
                    <div class="container">
                        <div class="biolife-title-box">
                            <span class="subtitle">All the best item for You</span>
                            <h3 class="main-title">Related Products</h3>
                        </div>
                        <div class="biolife-tab biolife-tab-contain sm-margin-top-34px">
                            <div class="tab-head tab-head__icon-top-layout icon-top-layout">
                                <ul class="tabs md-margin-bottom-35-im xs-margin-bottom-40-im">
                                    <li class="tab-element active">
                                        <a href="#tab01_1st" class="tab-link"><span
                                                class="biolife-icon icon-lemon"></span>Oranges</a>
                                    </li>
                                    <li class="tab-element">
                                        <a href="#tab01_2nd" class="tab-link"><span
                                                class="biolife-icon icon-grape2"></span>Grapes</a>
                                    </li>
                                    <li class="tab-element">
                                        <a href="#tab01_3rd" class="tab-link"><span
                                                class="biolife-icon icon-blueberry"></span>Blueberries</a>
                                    </li>
                                    <li class="tab-element">
                                        <a href="#tab01_4th" class="tab-link"><span
                                                class="biolife-icon icon-orange"></span>Lemon</a>
                                    </li>
                                    <li class="tab-element">
                                        <a href="#tab01_5th" class="tab-link"><span
                                                class="biolife-icon icon-broccoli"></span>Vegetables</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div id="tab01_1st" class="tab-contain active">
                                    <ul class="products-list biolife-carousel nav-center-02 nav-none-on-mobile eq-height-contain"
                                        data-slick='{"rows":2 ,"arrows":true,"dots":false,"infinite":true,"speed":400,"slidesMargin":10,"slidesToShow":4, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":20}},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":15}}]}'>
                                        <li class="product-item">
                                            <!--foreach here 2-->
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-05.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables1111</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Organic Hass
                                                            Avocado, Large</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="cart?ac=addtocart&productid=2" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                                <div id="tab01_2nd" class="tab-contain ">
                                    <ul class="products-list biolife-carousel nav-center-02 nav-none-on-mobile eq-height-contain"
                                        data-slick='{"rows":2 ,"arrows":true,"dots":false,"infinite":true,"speed":400,"slidesMargin":10,"slidesToShow":4, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":20}},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":15}}]}'>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-05.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Organic Hass
                                                            Avocado, Large</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-07.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">13 Healing Powers
                                                            of Lemons</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-02.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Hot Chili Peppers
                                                            Magnetic Salt</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-20.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-19.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
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
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-03.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Passover
                                                            Cauliflower Kugel</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-18.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-06.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Packham's
                                                            Pears</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-05.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Organic Hass
                                                            Avocado</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-22.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Cherry Tomato
                                                            Seeds</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div id="tab01_3rd" class="tab-contain ">
                                    <ul class="products-list biolife-carousel nav-center-02 nav-none-on-mobile eq-height-contain"
                                        data-slick='{"rows":2 ,"arrows":true,"dots":false,"infinite":true,"speed":400,"slidesMargin":10,"slidesToShow":4, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":20}},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":15}}]}'>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-05.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Organic Hass
                                                            Avocado, Large</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-02.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Hot Chili Peppers
                                                            Magnetic Salt</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-05.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Organic Hass
                                                            Avocado</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-06.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Packham's
                                                            Pears</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-07.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">13 Healing Powers
                                                            of Lemons</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-18.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-20.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-22.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Cherry Tomato
                                                            Seeds</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-19.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
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
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-03.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Passover
                                                            Cauliflower Kugel</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div id="tab01_4th" class="tab-contain ">
                                    <ul class="products-list biolife-carousel nav-center-02 nav-none-on-mobile eq-height-contain"
                                        data-slick='{"rows":2 ,"arrows":true,"dots":false,"infinite":true,"speed":400,"slidesMargin":10,"slidesToShow":4, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":20}},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":15}}]}'>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-20.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-05.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Organic Hass
                                                            Avocado, Large</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-22.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Cherry Tomato
                                                            Seeds</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-07.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">13 Healing Powers
                                                            of Lemons</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-02.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Hot Chili Peppers
                                                            Magnetic Salt</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-05.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Organic Hass
                                                            Avocado</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-03.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Passover
                                                            Cauliflower Kugel</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-18.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-19.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
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
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-06.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Packham's
                                                            Pears</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div id="tab01_5th" class="tab-contain ">
                                    <ul class="products-list biolife-carousel nav-center-02 nav-none-on-mobile eq-height-contain"
                                        data-slick='{"rows":2 ,"arrows":true,"dots":false,"infinite":true,"speed":400,"slidesMargin":10,"slidesToShow":4, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":20}},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":15}}]}'>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-20.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-22.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Cherry Tomato
                                                            Seeds</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-05.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Organic Hass
                                                            Avocado, Large</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-02.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Hot Chili Peppers
                                                            Magnetic Salt</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-07.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">13 Healing Powers
                                                            of Lemons</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-03.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Passover
                                                            Cauliflower Kugel</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-05.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Organic Hass
                                                            Avocado</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-19.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
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
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-06.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Packham's
                                                            Pears</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product layout-default">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-18.jpg" alt="Vegetables"
                                                             width="270" height="270" class="product-thumnail">
                                                    </a>
                                                    <a class="lookup btn_call_quickview" href="#"><i
                                                            class="biolife-icon icon-search"></i></a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn"><i
                                                                    class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
                                                                to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
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

                <!--Block 04: Banner Promotion 01-->
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
                                    <div class="product-detail">
                                        <p class="txt-price"><span>Only:</span>8.00</p>
                                        <a href="cart?ac=addtocart&productid=3" class="btn add-to-cart-btn">add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Block 05: Banner promotion 02-->
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

                <!--Block 06: Products-->
                <div class="Product-box sm-margin-top-96px">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-5 col-sm-6">
                                <div class="advance-product-box">
                                    <div class="biolife-title-box bold-style biolife-title-box__bold-style">
                                        <h3 class="title">Deals of the day</h3>
                                    </div>
                                    <ul class="products biolife-carousel nav-top-right nav-none-on-mobile"
                                        data-slick='{"arrows":true, "dots":false, "infinite":false, "speed":400, "slidesMargin":30, "slidesToShow":1}'>
                                        <li class="product-item">
                                            <div class="contain-product deal-layout contain-product__deal-layout">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/home-03/product_deal_330x330.jpg" alt="dd"
                                                             width="330" height="330" class="product-thumnail">
                                                    </a>
                                                    <div class="labels">
                                                        <span class="sale-label">-50%</span>
                                                    </div>
                                                </div>
                                                <div class="info">
                                                    <div class="biolife-countdown" data-datetime="2020-01-18 00:00 +00:00">
                                                    </div>
                                                    <b class="categories">Fresh Fruit</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn">add to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product deal-layout contain-product__deal-layout">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/home-03/product_deal-02_330x330.jpg"
                                                             alt="dd" width="330" height="330" class="product-thumnail">
                                                    </a>
                                                    <div class="labels">
                                                        <span class="sale-label">-50%</span>
                                                    </div>
                                                </div>
                                                <div class="info">
                                                    <div class="biolife-countdown" data-datetime="2020-01-03 00:00 +00:00">
                                                    </div>
                                                    <b class="categories">Fresh Fruit</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn">add to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div class="contain-product deal-layout contain-product__deal-layout">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/home-03/product_deal-03_330x330.jpg"
                                                             alt="dd" width="330" height="330" class="product-thumnail">
                                                    </a>
                                                    <div class="labels">
                                                        <span class="sale-label">-50%</span>
                                                    </div>
                                                </div>
                                                <div class="info">
                                                    <div class="biolife-countdown" data-datetime="2020-02-05 00:00 +00:00">
                                                    </div>
                                                    <b class="categories">Fresh Fruit</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="slide-down-box">
                                                        <p class="message">All products are carefully selected to ensure
                                                            food safety.</p>
                                                        <div class="buttons">
                                                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart"
                                                                                                    aria-hidden="true"></i></a>
                                                            <a href="#" class="btn add-to-cart-btn">add to cart</a>
                                                            <a href="#" class="btn compare-btn"><i class="fa fa-random"
                                                                                                   aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-7 col-sm-6">
                                <div class="advance-product-box">
                                    <div class="biolife-title-box bold-style biolife-title-box__bold-style">
                                        <h3 class="title">Top Rated Products</h3>
                                    </div>
                                    <ul class="products biolife-carousel nav-center-03 nav-none-on-mobile row-space-29px"
                                        data-slick='{"rows":2,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":30,"slidesToShow":2,"responsive":[{"breakpoint":1200,"settings":{ "rows":2, "slidesToShow": 2}},{"breakpoint":992, "settings":{ "rows":2, "slidesToShow": 1}},{"breakpoint":768, "settings":{ "rows":2, "slidesToShow": 2}},{"breakpoint":500, "settings":{ "rows":2, "slidesToShow": 1}}]}'>
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
                                                    <div class="rating">
                                                        <p class="star-rating"><span class="width-80percent"></span></p>
                                                        <span class="review-count">(05 Reviews)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div
                                                class="contain-product right-info-layout contain-product__right-info-layout">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-03.jpg" alt="dd" width="270"
                                                             height="270" class="product-thumnail">
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Passover
                                                            Cauliflower</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="rating">
                                                        <p class="star-rating"><span class="width-80percent"></span></p>
                                                        <span class="review-count">(05 Reviews)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div
                                                class="contain-product right-info-layout contain-product__right-info-layout">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-02.jpg" alt="dd" width="270"
                                                             height="270" class="product-thumnail">
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Hot Chili
                                                            Peppers</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="rating">
                                                        <p class="star-rating"><span class="width-80percent"></span></p>
                                                        <span class="review-count">(05 Reviews)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div
                                                class="contain-product right-info-layout contain-product__right-info-layout">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-22.jpg" alt="dd" width="270"
                                                             height="270" class="product-thumnail">
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Cherry Tomato
                                                            Seeds</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="rating">
                                                        <p class="star-rating"><span class="width-80percent"></span></p>
                                                        <span class="review-count">(05 Reviews)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div
                                                class="contain-product right-info-layout contain-product__right-info-layout">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-20.jpg" alt="dd" width="270"
                                                             height="270" class="product-thumnail">
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="rating">
                                                        <p class="star-rating"><span class="width-80percent"></span></p>
                                                        <span class="review-count">(05 Reviews)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div
                                                class="contain-product right-info-layout contain-product__right-info-layout">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-05.jpg" alt="dd" width="270"
                                                             height="270" class="product-thumnail">
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Organic Hass
                                                            Avocado</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="rating">
                                                        <p class="star-rating"><span class="width-80percent"></span></p>
                                                        <span class="review-count">(05 Reviews)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div
                                                class="contain-product right-info-layout contain-product__right-info-layout">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-06.jpg" alt="dd" width="270"
                                                             height="270" class="product-thumnail">
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">Packham's
                                                            Pears</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="rating">
                                                        <p class="star-rating"><span class="width-80percent"></span></p>
                                                        <span class="review-count">(05 Reviews)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-item">
                                            <div
                                                class="contain-product right-info-layout contain-product__right-info-layout">
                                                <div class="product-thumb">
                                                    <a href="#" class="link-to-product">
                                                        <img src="assets/images/products/p-20.jpg" alt="dd" width="270"
                                                             height="270" class="product-thumnail">
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    <b class="categories">Vegetables</b>
                                                    <h4 class="product-title"><a href="#" class="pr-name">National Fresh
                                                            Fruit</a></h4>
                                                    <div class="price ">
                                                        <ins><span class="price-amount"><span
                                                                    class="currencySymbol">80.00</span>VND</span></ins>
                                                        <del><span class="price-amount"><span
                                                                    class="currencySymbol">90.00 </span>VND</span></del>

                                                    </div>
                                                    <div class="rating">
                                                        <p class="star-rating"><span class="width-80percent"></span></p>
                                                        <span class="review-count">(05 Reviews)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div
                                        class="biolife-banner style-01 biolife-banner__style-01 sm-margin-top-30px xs-margin-top-80px">
                                        <div class="banner-contain">
                                            <a href="#" class="bn-link"></a>
                                            <div class="text-content">
                                                <span class="first-line">Daily Fresh</span>
                                                <b class="second-line">Natural</b>
                                                <i class="third-line">Fresh Food</i>
                                                <span class="fourth-line">Premium Quality</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Block 07: Brands-->
                <div class="brand-slide sm-margin-top-100px background-fafafa xs-margin-top-80px xs-margin-bottom-80px">
                    <div class="container">
                        <ul class="biolife-carousel nav-center-bold nav-none-on-mobile"
                            data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":30,"slidesToShow":4, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3}},{"breakpoint":768, "settings":{ "slidesToShow": 1}}]}'>
                            <li>
                                <div class="biolife-brd-container">
                                    <a href="#" class="link">
                                        <figure><img src="assets/images/home-03/brd-01.jpg" width="214" height="163" alt="">
                                        </figure>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="biolife-brd-container">
                                    <a href="#" class="link">
                                        <figure><img src="assets/images/home-03/brd-02.jpg" width="214" height="163" alt="">
                                        </figure>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="biolife-brd-container">
                                    <a href="#" class="link">
                                        <figure><img src="assets/images/home-03/brd-03.jpg" width="153" height="163" alt="">
                                        </figure>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="biolife-brd-container">
                                    <a href="#" class="link">
                                        <figure><img src="assets/images/home-03/brd-04.jpg" width="224" height="163" alt="">
                                        </figure>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="biolife-brd-container">
                                    <a href="#" class="link">
                                        <figure><img src="assets/images/home-03/brd-01.jpg" width="214" height="163" alt="">
                                        </figure>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="biolife-brd-container">
                                    <a href="#" class="link">
                                        <figure><img src="assets/images/home-03/brd-02.jpg" width="214" height="163" alt="">
                                        </figure>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="biolife-brd-container">
                                    <a href="#" class="link">
                                        <figure><img src="assets/images/home-03/brd-03.jpg" width="153" height="163" alt="">
                                        </figure>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="biolife-brd-container">
                                    <a href="#" class="link">
                                        <figure><img src="assets/images/home-03/brd-04.jpg" width="224" height="163" alt="">
                                        </figure>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

                <!--Block 08: Blog Posts-->
                <div class="blog-posts sm-margin-top-93px sm-padding-top-72px xs-padding-bottom-50px">
                    <div class="container">
                        <div class="biolife-title-box">
                            <span class="subtitle">The freshest and most exciting news</span>
                            <h3 class="main-title">From the Blog</h3>
                        </div>
                        <ul class="biolife-carousel nav-center nav-none-on-mobile xs-margin-top-36px"
                            data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":30,"slidesToShow":3, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 3}},{"breakpoint":992, "settings":{ "slidesToShow": 2}},{"breakpoint":768, "settings":{ "slidesToShow": 2}},{"breakpoint":600, "settings":{ "slidesToShow": 1}}]}'>
                            <li>
                                <div class="post-item style-bottom-info layout-02 ">
                                    <div class="thumbnail">
                                        <a href="#" class="link-to-post"><img src="assets/images/our-blog/post-thumb-01.jpg"
                                                                              width="370" height="270" alt=""></a>
                                        <div class="post-date">
                                            <span class="date">26</span>
                                            <span class="month">dec</span>
                                        </div>
                                    </div>
                                    <div class="post-content">
                                        <h4 class="post-name"><a href="#" class="linktopost">Ashwagandha: The #1 Herb in the
                                                World for Anxiety?</a></h4>
                                        <div class="post-meta">
                                            <a href="#" class="post-meta__item author"><img
                                                    src="assets/images/home-03/post-author.png" width="28" height="28"
                                                    alt=""><span>Admin</span></a>
                                            <a href="#" class="post-meta__item btn liked-count">2<span
                                                    class="biolife-icon icon-comment"></span></a>
                                            <a href="#" class="post-meta__item btn comment-count">6<span
                                                    class="biolife-icon icon-like"></span></a>
                                            <div class="post-meta__item post-meta__item-social-box">
                                                <span class="tbn"><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                                                <div class="inner-content">
                                                    <ul class="socials">
                                                        <li><a href="#" title="twitter" class="socail-btn"><i
                                                                    class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="facebook" class="socail-btn"><i
                                                                    class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="pinterest" class="socail-btn"><i
                                                                    class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="youtube" class="socail-btn"><i
                                                                    class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="instagram" class="socail-btn"><i
                                                                    class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="excerpt">Did you know that red-staining foods are excellent lymph-movers?
                                            In fact, many plants that were historically used as dyes...</p>
                                        <div class="group-buttons">
                                            <a href="#" class="btn readmore">continue reading</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="post-item style-bottom-info layout-02">
                                    <div class="thumbnail">
                                        <a href="#" class="link-to-post"><img src="assets/images/our-blog/post-thumb-02.jpg"
                                                                              width="370" height="270" alt=""></a>
                                        <div class="post-date">
                                            <span class="date">26</span>
                                            <span class="month">dec</span>
                                        </div>
                                    </div>
                                    <div class="post-content">
                                        <h4 class="post-name"><a href="#" class="linktopost">Ashwagandha: The #1 Herb in the
                                                World for Anxiety?</a></h4>
                                        <div class="post-meta">
                                            <a href="#" class="post-meta__item author"><img
                                                    src="assets/images/home-03/post-author.png" width="28" height="28"
                                                    alt=""><span>Admin</span></a>
                                            <a href="#" class="post-meta__item btn liked-count">2<span
                                                    class="biolife-icon icon-comment"></span></a>
                                            <a href="#" class="post-meta__item btn comment-count">6<span
                                                    class="biolife-icon icon-like"></span></a>
                                            <div class="post-meta__item post-meta__item-social-box">
                                                <span class="tbn"><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                                                <div class="inner-content">
                                                    <ul class="socials">
                                                        <li><a href="#" title="twitter" class="socail-btn"><i
                                                                    class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="facebook" class="socail-btn"><i
                                                                    class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="pinterest" class="socail-btn"><i
                                                                    class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="youtube" class="socail-btn"><i
                                                                    class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="instagram" class="socail-btn"><i
                                                                    class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="excerpt">Did you know that red-staining foods are excellent lymph-movers?
                                            In fact, many plants that were historically used as dyes...</p>
                                        <div class="group-buttons">
                                            <a href="#" class="btn readmore">continue reading</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="post-item style-bottom-info layout-02">
                                    <div class="thumbnail">
                                        <a href="#" class="link-to-post"><img src="assets/images/our-blog/post-thumb-04.jpg"
                                                                              width="370" height="270" alt=""></a>
                                        <div class="post-date">
                                            <span class="date">26</span>
                                            <span class="month">dec</span>
                                        </div>
                                    </div>
                                    <div class="post-content">
                                        <h4 class="post-name"><a href="#" class="linktopost">Ashwagandha: The #1 Herb in the
                                                World for Anxiety?</a></h4>
                                        <div class="post-meta">
                                            <a href="#" class="post-meta__item author"><img
                                                    src="assets/images/home-03/post-author.png" width="28" height="28"
                                                    alt=""><span>Admin</span></a>
                                            <a href="#" class="post-meta__item btn liked-count">2<span
                                                    class="biolife-icon icon-comment"></span></a>
                                            <a href="#" class="post-meta__item btn comment-count">6<span
                                                    class="biolife-icon icon-like"></span></a>
                                            <div class="post-meta__item post-meta__item-social-box">
                                                <span class="tbn"><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                                                <div class="inner-content">
                                                    <ul class="socials">
                                                        <li><a href="#" title="twitter" class="socail-btn"><i
                                                                    class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="facebook" class="socail-btn"><i
                                                                    class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="pinterest" class="socail-btn"><i
                                                                    class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="youtube" class="socail-btn"><i
                                                                    class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="instagram" class="socail-btn"><i
                                                                    class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="excerpt">Did you know that red-staining foods are excellent lymph-movers?
                                            In fact, many plants that were historically used as dyes...</p>
                                        <div class="group-buttons">
                                            <a href="#" class="btn readmore">continue reading</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="post-item style-bottom-info layout-02">
                                    <div class="thumbnail">
                                        <a href="#" class="link-to-post"><img src="assets/images/our-blog/post-thumb-03.jpg"
                                                                              width="370" height="270" alt=""></a>
                                        <div class="post-date">
                                            <span class="date">26</span>
                                            <span class="month">dec</span>
                                        </div>
                                    </div>
                                    <div class="post-content">
                                        <h4 class="post-name"><a href="#" class="linktopost">Ashwagandha: The #1 Herb in the
                                                World for Anxiety?</a></h4>
                                        <div class="post-meta">
                                            <a href="#" class="post-meta__item author"><img
                                                    src="assets/images/home-03/post-author.png" width="28" height="28"
                                                    alt=""><span>Admin</span></a>
                                            <a href="#" class="post-meta__item btn liked-count">2<span
                                                    class="biolife-icon icon-comment"></span></a>
                                            <a href="#" class="post-meta__item btn comment-count">6<span
                                                    class="biolife-icon icon-like"></span></a>
                                            <div class="post-meta__item post-meta__item-social-box">
                                                <span class="tbn"><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                                                <div class="inner-content">
                                                    <ul class="socials">
                                                        <li><a href="#" title="twitter" class="socail-btn"><i
                                                                    class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="facebook" class="socail-btn"><i
                                                                    class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="pinterest" class="socail-btn"><i
                                                                    class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="youtube" class="socail-btn"><i
                                                                    class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="instagram" class="socail-btn"><i
                                                                    class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="excerpt">Did you know that red-staining foods are excellent lymph-movers?
                                            In fact, many plants that were historically used as dyes...</p>
                                        <div class="group-buttons">
                                            <a href="#" class="btn readmore">continue reading</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="post-item style-bottom-info layout-02">
                                    <div class="thumbnail">
                                        <a href="#" class="link-to-post"><img src="assets/images/our-blog/post-thumb-05.jpg"
                                                                              width="370" height="270" alt=""></a>
                                        <div class="post-date">
                                            <span class="date">26</span>
                                            <span class="month">dec</span>
                                        </div>
                                    </div>
                                    <div class="post-content">
                                        <h4 class="post-name"><a href="#" class="linktopost">Ashwagandha: The #1 Herb in the
                                                World for Anxiety?</a></h4>
                                        <div class="post-meta">
                                            <a href="#" class="post-meta__item author"><img
                                                    src="assets/images/home-03/post-author.png" width="28" height="28"
                                                    alt=""><span>Admin</span></a>
                                            <a href="#" class="post-meta__item btn liked-count">2<span
                                                    class="biolife-icon icon-comment"></span></a>
                                            <a href="#" class="post-meta__item btn comment-count">6<span
                                                    class="biolife-icon icon-like"></span></a>
                                            <div class="post-meta__item post-meta__item-social-box">
                                                <span class="tbn"><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                                                <div class="inner-content">
                                                    <ul class="socials">
                                                        <li><a href="#" title="twitter" class="socail-btn"><i
                                                                    class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="facebook" class="socail-btn"><i
                                                                    class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="pinterest" class="socail-btn"><i
                                                                    class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="youtube" class="socail-btn"><i
                                                                    class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="instagram" class="socail-btn"><i
                                                                    class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="excerpt">Did you know that red-staining foods are excellent lymph-movers?
                                            In fact, many plants that were historically used as dyes...</p>
                                        <div class="group-buttons">
                                            <a href="#" class="btn readmore">continue reading</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="post-item style-bottom-info layout-02">
                                    <div class="thumbnail">
                                        <a href="#" class="link-to-post"><img src="assets/images/our-blog/post-thumb-06.jpg"
                                                                              width="370" height="270" alt=""></a>
                                        <div class="post-date">
                                            <span class="date">26</span>
                                            <span class="month">dec</span>
                                        </div>
                                    </div>
                                    <div class="post-content">
                                        <h4 class="post-name"><a href="#" class="linktopost">Ashwagandha: The #1 Herb in the
                                                World for Anxiety?</a></h4>
                                        <div class="post-meta">
                                            <a href="#" class="post-meta__item author"><img
                                                    src="assets/images/home-03/post-author.png" width="28" height="28"
                                                    alt=""><span>Admin</span></a>
                                            <a href="#" class="post-meta__item btn liked-count">2<span
                                                    class="biolife-icon icon-comment"></span></a>
                                            <a href="#" class="post-meta__item btn comment-count">6<span
                                                    class="biolife-icon icon-like"></span></a>
                                            <div class="post-meta__item post-meta__item-social-box">
                                                <span class="tbn"><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                                                <div class="inner-content">
                                                    <ul class="socials">
                                                        <li><a href="#" title="twitter" class="socail-btn"><i
                                                                    class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="facebook" class="socail-btn"><i
                                                                    class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="pinterest" class="socail-btn"><i
                                                                    class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="youtube" class="socail-btn"><i
                                                                    class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                                        <li><a href="#" title="instagram" class="socail-btn"><i
                                                                    class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="excerpt">Did you know that red-staining foods are excellent lymph-movers?
                                            In fact, many plants that were historically used as dyes...</p>
                                        <div class="group-buttons">
                                            <a href="#" class="btn readmore">continue reading</a>
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
                                <a href="home-03-green.html" class="logo footer-logo"><img
                                        src="assets/images/organic-3-green.png" alt="biolife logo" width="135"
                                        height="36"></a>
                                <div class="footer-phone-info">
                                    <i class="biolife-icon icon-head-phone"></i>
                                    <p class="r-info">
                                        <span>Got Questions ?</span>
                                        <span>012231231</span>
                                    </p>
                                </div>
                                <div class="newsletter-block layout-01">
                                    <h4 class="title">Newsletter Signup</h4>
                                    <div class="form-content">
                                        <form action="#" name="new-letter-foter">
                                            <input type="email" class="input-text email" value=""
                                                   placeholder="Your email here...">
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
                                                <b class="desc">FPT university </b>
                                            </p>
                                        </li>
                                        <li>
                                            <p class="info-item">
                                                <i class="biolife-icon icon-phone"></i>
                                                <b class="desc">Phone: 0012312312</b>
                                            </p>
                                        </li>
                                        <li>
                                            <p class="info-item">
                                                <i class="biolife-icon icon-letter"></i>
                                                <b class="desc">Email: Lj5BZ@example.com</b>
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
                                        <li><a href="#" title="twitter" class="socail-btn"><i class="fa fa-twitter"
                                                                                              aria-hidden="true"></i></a></li>
                                        <li><a href="#" title="facebook" class="socail-btn"><i class="fa fa-facebook"
                                                                                               aria-hidden="true"></i></a></li>
                                        <li><a href="#" title="pinterest" class="socail-btn"><i class="fa fa-pinterest"
                                                                                                aria-hidden="true"></i></a></li>
                                        <li><a href="#" title="youtube" class="socail-btn"><i class="fa fa-youtube"
                                                                                              aria-hidden="true"></i></a></li>
                                        <li><a href="#" title="instagram" class="socail-btn"><i class="fa fa-instagram"
                                                                                                aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </section>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="separator sm-margin-top-62px xs-margin-top-40px"></div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-xs-12">
                            <div class="copy-right-text">
                                <p><a href="templateshub.net">Templates Hub</a></p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-xs-12">
                            <div class="payment-methods">
                                <ul>
                                    <li><a href="#" class="payment-link"><img src="assets/images/card1.jpg" width="51"
                                                                              height="36" alt=""></a></li>
                                    <li><a href="#" class="payment-link"><img src="assets/images/card2.jpg" width="51"
                                                                              height="36" alt=""></a></li>
                                    <li><a href="#" class="payment-link"><img src="assets/images/card3.jpg" width="51"
                                                                              height="36" alt=""></a></li>
                                    <li><a href="#" class="payment-link"><img src="assets/images/card4.jpg" width="51"
                                                                              height="36" alt=""></a></li>
                                    <li><a href="#" class="payment-link"><img src="assets/images/card5.jpg" width="51"
                                                                              height="36" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>



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
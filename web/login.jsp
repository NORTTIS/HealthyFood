<%-- 
    Document   : login.jsp
    Created on : Sep 19, 2024, 7:45:38 PM
    Author     : manhg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <body>
        <!-- HEADER -->
<!--        <header id="header" class="header-area style-01 layout-03">
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
                            <li><a href="login.jsp" class="login-link"><i
                                        class="biolife-icon icon-login"></i>Login/Register</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header-middle biolife-sticky-object ">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-2 col-md-6 col-xs-6">
                            <a href="index.jsp" class="biolife-logo"><img src="assets/images/organic-3-green.png"
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
                                        <li class="menu-item"><a href="#">Biscuits</a></li>
                                        <li class="menu-item"><a href="#">Seasonal Fruit Plate</a></li>
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

        </header>-->
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
                    <li class="nav-item"><span class="current-page">Authentication</span></li>
                </ul>
            </nav>
        </div>

        <div class="page-contain login-page">
            <!-- Main content -->
            <div id="main-content" class="main-content">
                <div class="container">
                    <div class="row">
                        <!--Form Sign In-->
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <div class="signin-container">
                                <h1 class="text-center">Login</h1>
                                <p class="text-danger">${mess}</p>
                                <form action="login" name="frm-login" method="post">
                                    <p class="form-row">
                                        <label for="username">Username:<span class="requite">*</span></label>
                                        <input type="text" id="username" name="username" value="" class="txt-input" required>
                                    </p>
                                    <p class="form-row">
                                        <label for="password">Password:<span class="requite">*</span></label>
                                        <input type="password" id="password" name="password" value="" class="txt-input" required>
                                    </p>
                                    <p class="form-row wrap-btn">
                                        <button class="btn btn-submit btn-bold" type="submit">Sign In</button>
                                        <a href="forgotPassword.jsp" class="link-to-help">Forgot your password?</a>
                                    </p>
                                </form>
                            </div>
                        </div>

                        <!--Go to Register form-->
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <div class="register-in-container">
                                <div class="intro">
                                    <h4 class="box-title">New Customer?</h4>
                                    <p class="sub-title">Create an account with us and you’ll be able to:</p>
                                    <ul class="lis">
                                        <li>Check out faster</li>
                                        <li>Save multiple shipping addresses</li>
                                        <li>Access your order history</li>
                                        <li>Track new orders</li>
                                        <li>Save items to your Wishlist</li>
                                    </ul>
                                    <a href="signup.jsp" class="btn btn-bold">Create an account</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </div>
    <!-- FOOTER -->
    <jsp:include page="./jsptemplate/footer.jsp" />

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

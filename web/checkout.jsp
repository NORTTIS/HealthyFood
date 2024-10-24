<%-- 
    Document   : checkout
    Created on : Oct 7, 2024, 2:17:11 PM
    Author     : Minh
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
        <div class="hero-section hero-background">
            <h1 class="page-title">Organic Fruits</h1>
        </div>

        <!--Navigation section-->
        <div class="container">
            <nav class="biolife-nav">
                <ul>
                    <li class="nav-item"><a href="index-2.html" class="permal-link">Home</a></li>
                    <li class="nav-item"><span class="current-page">Checkout</span></li>
                </ul>
            </nav>
        </div>

        <div class="page-contain checkout">

            <!-- Main content -->
            <div id="main-content" class="main-content">
                <div class="container sm-margin-top-37px">
                    <div class="row">

                        <!--checkout progress box-->
                        <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
                            <div class="checkout-progress-wrap">
                                <ul class="steps">
                                    <li class="step ">
                                        <div class="checkout-act active">
                                            <h3 class="title-box"><span class="number">1</span>Customer</h3>
                                            <div class="box-content">
                                                <p class="txt-desc">Checking out as a <a class="pmlink" href="#">Guest?</a> You’ll be able to save your details to create an account with us later.</p>
                                                <div class="login-on-checkout">
                                                    <form action="#" name="frm-login" method="post">
                                                        <p class="form-row">
                                                            <label for="input_email">Email Address</label>
                                                            <input type="email" name="email" id="input_email" value="" placeholder="Your email">
                                                            <button type="submit" name="btn-sbmt" class="btn">Continue As Guest</button>
                                                        </p>
                                                        <p class="form-row">
                                                            <input type="checkbox" name="subcribe" id="input_subcribe" >
                                                            <label for="input_subcribe">Subscribe to our newsletter</label>
                                                        </p>
                                                        <p class="msg">Already have an account? <a href="login" class="link-forward">Sign in now</a></p>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="step 4th">
                                        <div class="checkout-act"><h3 class="title-box"><span class="number">2</span>Payment</h3>
                                            <div class="box-content">
                                                <p class="txt-desc">Choose your payment method</p>
                                                <div class="login-on-checkout">
                                                    <form action="#" name="frm-login" method="post">
                                                        <p class="form-row">
                                                            <label for="input_email">Email Address</label>
                                                            <input type="email" name="email" id="input_email" value="" placeholder="Your email">
                                                            <button type="submit" name="btn-sbmt" class="btn">Continue As Guest</button>
                                                        </p>
                                                        <p class="form-row">
                                                            <input type="checkbox" name="subcribe" id="input_subcribe" >
                                                            <label for="input_subcribe">Subscribe to our newsletter</label>
                                                        </p>
                                                    </form>

                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <!--Order Summary-->
                        <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12 sm-padding-top-48px sm-margin-bottom-0 xs-margin-bottom-15px">
                            <div class="order-summary sm-margin-bottom-80px">
                                <div class="title-block">
                                    <h3 class="title">Order Summary</h3>
                                    <a href="cart?ac=show" class="link-forward">Edit cart</a>
                                </div>
                                <div class="cart-list-box short-type">
                                    <span class="number">${cart.getCount()} items</span>
                                    <ul class="cart-list">
                                        <c:forEach items="${cart.getItems()}" var="i">
                                            <li class="cart-elem">
                                                <div class="cart-item">
                                                    <div class="product-thumb">
                                                        <a class="prd-thumb" href="#">
                                                            <figure><img src="./assets/images/products/p-01.jpg" width="113" height="113" alt="shop-cart" ></figure>
                                                        </a>
                                                    </div>
                                                    <div class="info">
                                                        <span class="txt-quantity">X ${i.quantity}</span>
                                                        <a href="#" class="pr-name">${i.product.name}</a>
                                                    </div>
                                                    <div class="price price-contain">
                                                        <ins><span class="price-amount">${i.getTotal()} <span class="currencySymbol">VND</span></span></ins>
                                                        
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>


                                    </ul>
                                    <ul class="subtotal">
                                        <li>
                                            <div class="subtotal-line">
                                                <b class="stt-name">Total Calorie </b>
                                                <span class="stt-price">${totalCal}</span>
                                            </div>
                                        </li>
                                        <li>

                                        </li>

                                        <li>
                                            <div class="subtotal-line">
                                                <b class="stt-name">Total amount:</b>
                                                <span class="stt-price">${totalPrice}</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <form method="post" action="pay" style="text-align: end;">
                                    <input type="text" name="amount" value="${totalPrice}" hidden/>
                                    <input type="submit" class=" btn btn-default" value="Thanh toán" />
                                </form>
                            </div>

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
        <script src="assets/js/jquery.nice-select.min.js"></script>
        <script src="assets/js/jquery.nicescroll.min.js"></script>
        <script src="assets/js/slick.min.js"></script>
        <script src="assets/js/biolife.framework.js"></script>
        <script src="assets/js/functions.js"></script>
    </body>

</html>
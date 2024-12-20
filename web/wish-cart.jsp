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

        <!--     Preloader -->
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
                    <li class="nav-item"><a href="home" class="permal-link">Home</a></li>
                    <li class="nav-item"><span class="current-page">Wishcart</span></li>
                </ul>
            </nav>
        </div>

        <div class="page-contain shopping-cart">

            <!-- Main content -->
            <div id="main-content" class="main-content">
                <div class="container">


                    <!--Cart Table-->
                    <div class="shopping-cart-container" style="margin-bottom:50px;">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h3 class="box-title">Your cart items</h3>
                                <form class="shopping-cart-form" action="wishlist" method="post">
                                    <input type="text" name="ac" value="upd" hidden/>
                                    <table class="shop_table cart-form">
                                        <thead>
                                            <tr>
                                                <th class="product-quantity">In Stock</th>
                                                <th class="product-name">Product Name</th>
                                                <th class="product-price">Price</th>
                                                <th class="product-quantity">Quantity</th>
                                                <th class="product-subtotal">Total</th>
                                                <th class="product-subtotal">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <c:forEach items="${wishcart.getItems()}" var="i">

                                                <tr class="cart_item ">
                                                    <td class="product-quantity" data-title="Quantity">
                                                        <span class="price-amount">${i.product.quantityInStock}</span>
                                                    </td>
                                                    <td class="product-thumbnail" data-title="Product Name">
                                                        <input type="text" name="productid[]" value="${i.product.productId}" hidden/>
                                                        <a class="prd-thumb" href="#">
                                                            <figure><img width="113" height="113" src="./assets/images/products/${i.product.picture}" style="width: 113px ;height: 113px; border-radius: 20px;" alt="shipping cart"></figure>
                                                        </a>
                                                        <a class="prd-name" href="#">${i.product.name}</a>
                                                        <div class="action">
                                                            <a href="#" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                                            <a href="wishlist?ac=del&productId=${i.product.productId}" class="remove"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
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
                                                        </div>
                                                    </td>
                                                    <td class="product-subtotal" data-title="Action">
                                                        <div class="price price-contain">
                                                            <a href="cart?ac=addtocart&productId=${i.product.productId}" class="btn btn-default">Add to cart</a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>

                                            <tr class="cart_item wrap-buttons">
                                                <td class="wrap-btn-control" colspan="4">
                                                    <a class="btn back-to-shop" href="shop">Back to Shop</a>
                                                    <button class="btn btn-update" type="submit" >update</button>
                                                    <button class="btn btn-clear" type="reset">clear all</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
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

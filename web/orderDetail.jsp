<%-- 
    Document   : orderDetail
    Created on : Oct 22, 2024, 8:16:44 PM
    Author     : Norttie
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Profile</title>

        <link href="https://fonts.googleapis.com/css?family=Cairo:100,200,300,400,600,700&amp;display=swap" rel="stylesheet">
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
        <style>
            .no-border {
                border: none;
                outline: none;
                box-shadow: none;
            }
            .opa-05{
                opacity: 0.5;
            }
        </style>
    </head>
    <body>

        <c:if test="${sessionScope.acc == null}">
            <c:redirect url="login"/>
        </c:if>
        <!-- header -->
        <c:if test="${sessionScope.acc.role != 'Manager'}">
            <jsp:include page="./jsptemplate/header.jsp" />
        </c:if>

        <section style="margin: 45px 0px; " >

            <div class="container py-5">
                <button onclick="goBack()" class="btn btn-light">back</button>
                <div class="row form-log" style="border-right: 0.5px solid #eaeaea;
                     border-left: 1px solid #eaeaea;
                     min-height: 450px;">
                    <div class=" orderside-left col-lg-7 col-md-7 col-sm-6 col-xs-12">
                        <div class="mt-4">
                            <h2>Delivery Details</h2>
                            <div >
                                <div class="row mb-3">
                                    <div class="col-md-5">
                                        <label for="fullName" class="form-label">Full name</label>
                                        <p>${deDetail.fullname==null?acc.displayname: deDetail.fullname}</p>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="email" class="form-label">Email</label>
                                        <p>${deDetail.email==null?acc.email: deDetail.email}</p>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="mobile" class="form-label">Mobile</label>
                                        <p>${deDetail.phone==null?acc.phone_number: deDetail.phone}</p>
                                    </div>
                                </div>

                                <div class="mb-3" style="margin-top: 10px;" >
                                    <label for="address" class="form-label">Address</label>
                                    <p>${deDetail.address==null?acc.address : deDetail.address}</p>
                                </div>

                                <div class="mb-3" style="margin-top: 10px;" >
                                    <label for="deliveryNotes" class="form-label">Delivery Notes</label>
                                    <textarea  name="note" class="form-control" id="deliveryNotes" rows="12" readonly="true" style="background-color: inherit">${deDetail.note}</textarea>
                                </div>

                                <div class="row mb-3" style="margin-top: 10px;" >
                                    <div class="col-md-6">
                                        <label for="voucherCode" class="form-label">Voucher Code</label>
                                        <div class="input-group" style="    display: flex;
                                             gap: 10px;
                                             margin-bottom: 10px;">
                                            <p>${deDetail.voucher}</p>

                                        </div>
                                    </div>
                                </div>

                            </div>


                        </div> 
                    </div>
                    <div class="orderside-left col-lg-5" style="padding: 50px 20px 0px 35px;">
                        <div class="order-summary sm-margin-bottom-80px">
                            <div class="order-summary sm-margin-bottom-24px">
                                <div class="title-block d-flex">
                                    <h3 class="title">Order Summary</h3>

                                    <span class="order-date">Order date: ${order.createAt}</span>

                                </div>
                                <span style=""> ${order.status}</span>  

                                <div class="cart-list-box short-type">
                                    <span class="number">${cart.getCount()} items</span>
                                    <ul class="cart-list">
                                        <c:forEach items="${cart.getItems()}" var="i">
                                            <li class="cart-elem">
                                                <div class="cart-item">
                                                    <div class="product-thumb">
                                                        <a class="prd-thumb" href="#">
                                                            <figure><img src="./assets/images/products/${i.product.picture}" width="113" height="113" style="border-radius: 20px" alt="shop-cart" ></figure>
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
                                                <span class="stt-price">${cart.totalCal} cal</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="subtotal-line">
                                                <b class="stt-name">Discount</b>
                                                <span class="stt-price">- ${discount==null?0:discount} VND</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="subtotal-line">
                                                <b class="stt-name">Total amount:</b>
                                                <span class="stt-price">${cart.totalPrice - discount} VND</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                            </div>
                        </div> 


                    </div>
                </div>
        </section>
        <!-- footer -->

        <c:if test="${sessionScope.acc.role != 'Manager'}">
            <jsp:include page="./jsptemplate/footer.jsp" />
        </c:if>
        <script src="assets/js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.countdown.min.js"></script>
        <script src="assets/js/slick.min.js"></script>
        <script src="assets/js/biolife.framework.js"></script>
        <script src="assets/js/jquery.nicescroll.min.js"></script>
        <script src="assets/js/functions.js"></script>
    </body>
</html>


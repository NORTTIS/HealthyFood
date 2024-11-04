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
        <c:if test="${sessionScope.bmiR==null}">
            <c:redirect url="bmi.jsp"/>
        </c:if>
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


        <!--Navigation section-->
        <div class="container">
            <nav class="biolife-nav">
                <ul>
                    <li class="nav-item"><a href="home" class="permal-link">Home</a></li>
                    <li class="nav-item"><span class="current-page">Checkout</span></li>
                </ul>
            </nav>
        </div>


        <div class="page-contain checkout">

            <!-- Main content -->
            <div id="main-content" class="main-content">
                <div class="container">
                    <p class="text-danger">${error}</p>
                    <div class="row">

                        <!--checkout progress box-->
                        <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
                            <div class="mt-4">
                                <h2>Delivery Details</h2>
                                <form action="checkout" method="post">
                                    <input type="text" name="ac" value="upd" hidden="true"/>
                                    <div class="row mb-3">
                                        <div class="col-md-5">
                                            <label for="fullName" class="form-label">Full name<span class="text-danger">*</span></label>
                                            <input value="${sessionScope.deDetail.fullname==null?acc.displayname:sessionScope.deDetail.fullname}" name="fullname" type="text" class="form-control" id="fullName" required>
                                        </div>
                                        <div class="col-md-3">
                                            <label for="email" class="form-label">Email<span class="text-danger">*</span></label>
                                            <input value="${sessionScope.deDetail.email==null?acc.email:sessionScope.deDetail.email}" name="email" type="email" class="form-control" id="email" required oninput="checkEmail()">
                                            <div id="emailError" class="text-danger" style="display:none;">Invalid email format.</div>
                                        </div>
                                        <div class="col-md-3">
                                            <label for="mobile" class="form-label">Mobile<span class="text-danger">*</span></label>
                                            <input value="${sessionScope.deDetail.phone==null?acc.phone_number:sessionScope.deDetail.phone}" name="phone" type="tel" class="form-control" id="mobile" required oninput="checkPhoneNumber()">
                                            <div id="phoneError" class="text-danger" style="display:none;">Invalid phone number format.</div>
                                        </div>
                                    </div>

                                    <div class="row mb-3" style="margin-top: 10px;" >
                                        <div class="col-md-4">
                                            <label for="province" class="form-label">Select city/province </label>
                                            <select name="" id="province">
                                                <option value="">chọn tỉnh/thành phố</option>
                                            </select>
                                        </div>

                                        <div class="col-md-3">
                                            <label for="province" class="form-label">Select district </label>
                                            <select name="" id="district">
                                                <option value="">chọn quận</option>
                                            </select>
                                        </div>

                                        <div class="col-md-4">
                                            <label for="province" class="form-label">Select ward </label>
                                            <select name="" id="ward">
                                                <option value="">chọn phường</option>
                                            </select>
                                        </div>
                                    </div>
                                            


                                    <div class="mb-3" style="margin-top: 10px;" >
                                        <label for="address" class="form-label">Address<span class="text-danger">*</span> </label>
                                        <input value="${sessionScope.deDetail.address}" name="address" type="text" class="form-control" id="address" value="${acc.address}" required>
                                    </div>

                                    <div class="mb-3" style="margin-top: 10px;" >
                                        <label for="deliveryNotes" class="form-label">Delivery Notes</label>
                                        <textarea name="note" class="form-control" id="deliveryNotes" rows="3">${sessionScope.deDetail.note}</textarea>
                                    </div>

                                    <div class="row mb-3" style="margin-top: 10px;" >
                                        <div class="col-md-6">
                                            <label for="voucherCode" class="form-label">Voucher Code</label>
                                            <div class="input-group" style="    display: flex;
                                                 gap: 10px;
                                                 margin-bottom: 10px;">
                                                <input name="voucher" type="text" class="form-control" id="voucherCode" placeholder="SEP50K">

                                            </div>
                                        </div>
                                    </div>


                                    <form>
                                        <input type="submit" class=" btn btn-primary" value="submit" />

                                    </form>

                                </form>
                                <form action="pay" method="post">
                                    <input type="text" name="amount" value="${totalPrice}" hidden/>
                                    <input type="submit" class=" btn btn-default" value="Checkout online" style="    width: 100%;
                                           border-radius: 0px;
                                           margin-top: 10px;
                                           padding: 20px 0px;
                                           ${(sessionScope.deDetail==null || error != null)?'pointer-events:none;background-color:#8e8e8e':""}
                                           "
                                           />
                                  
                                </form>
                                           <p style="margin: 0; text-align: center">Or</p>
                                   <form action="checkout" method="post">
                                       <input type="text" value="cashon" name="ac" hidden="true"/>
                                    <input type="submit" class=" btn btn-default" value="Cash on delivery" style="    width: 100%;
                                           border-radius: 0px;
                                           margin-bottom: 35px;
                                           padding: 20px 0px;
                                           background-color: #b08d0e;
                                           ${(sessionScope.deDetail==null || error != null)?'pointer-events:none;background-color:#8e8e8e':""}
                                           "
                                           />
                                  
                                </form>

                            </div> 
                        </div>

                        <!--Order Summary-->
                        <div class="col-lg-5">
                            <div class="order-summary sm-margin-bottom-80px">
                                <div class="title-block">
                                    <h3 class="title">Order Summary</h3>
                                    <a href="cart?ac=show" class="link-forward">Edit cart</a>
                                </div>
                                <div class="cart-list-box">
                                    <span class="number">${cart.getCount()} items</span>
                                    <!-- short-type -->
                                    <ul class="cart-list" style="height: 230px;
                                        overflow-y: auto;">
                                        <c:forEach items="${cart.getItems()}" var="i">
                                            <li class="cart-elem">
                                                <div class="cart-item">
                                                    <div class="product-thumb">     
                                                        <a class="prd-thumb" href="#">
                                                            <figure><img src="./assets/images/products/${i.product.picture}" alt="shop-cart" width="113" height="113"  style="border-radius: 20px; width: 113px; height: 113px;"></figure>
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
                                                <span class="stt-price">${totalCal} cal</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="subtotal-line">
                                                <b class="stt-name"> Discount </b>
                                                <span class="stt-price">- ${discount==null?0:discount} VND</span>
                                            </div>
                                        </li>
                                        <li>

                                        </li>

                                        <li>
                                            <div class="subtotal-line">
                                                <b class="stt-name">Total amount:</b>
                                                <span class="stt-price">${totalPrice} VND</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

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

        <script>
            function validateEmail(email) {
                const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return emailPattern.test(email);
            }

            function isVietnamesePhoneNumber(number) {
                const phonePattern = /^(03|05|07|08|09|01[2|6|8|9])[0-9]{8}$/;
                return phonePattern.test(number);
            }

            function checkEmail() {
                const email = document.getElementById("email").value;
                const emailError = document.getElementById("emailError");

                if (validateEmail(email)) {
                    emailError.style.display = "none"; // Ẩn thông báo lỗi
                } else {
                    emailError.style.display = "block"; // Hiện thông báo lỗi
                }
            }

            function checkPhoneNumber() {
                const mobile = document.getElementById("mobile").value;
                const phoneError = document.getElementById("phoneError");

                if (isVietnamesePhoneNumber(mobile)) {
                    phoneError.style.display = "none"; // Ẩn thông báo lỗi
                } else {
                    phoneError.style.display = "block"; // Hiện thông báo lỗi
                }
            }

            function validateForm() {
                const email = document.getElementById("email").value;
                const mobile = document.getElementById("mobile").value;

                // Kiểm tra email
                if (!validateEmail(email)) {
                    alert("Invalid email format. Please enter a valid email address.");
                    return false; // Ngăn chặn form gửi đi
                }

                // Kiểm tra số điện thoại
                if (!isVietnamesePhoneNumber(mobile)) {
                    alert("Invalid phone number format. Please enter a valid phone number (e.g., 0123456789).");
                    return false; // Ngăn chặn form gửi đi
                }

                return true; // Cho phép gửi form
            }
        </script>
        <script src="assets/js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.countdown.min.js"></script>
        <script src="assets/js/jquery.nice-select.min.js"></script>
        <script src="assets/js/jquery.nicescroll.min.js"></script>
        <script src="assets/js/slick.min.js"></script>
        <script src="assets/js/biolife.framework.js"></script>
        <script src="assets/js/functions.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.26.1/axios.min.js"
            integrity="sha512-bPh3uwgU5qEMipS/VOmRqynnMXGGSRv+72H/N260MQeXZIK4PG48401Bsby9Nq5P5fz7hy5UGNmC/W1Z51h2GQ=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
        ></script>
        <script src="assets/js/address-select-api.js"></script>
    </body>

</html>
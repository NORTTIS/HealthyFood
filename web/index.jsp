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
        <title>Healthy Food - Biolife</title>
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
        <link rel="stylesheet" href="assets/css/nutriMenu.css">
    </head>

    <body class="biolife-body">
        <c:if test="${sessionScope.bmiR==null}">
            <c:redirect url="bmi.jsp"/>
        </c:if>
        <!--Preloader loading-->
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
                                      
                                          <c:if test="${ sessionScope.acc.role !='Manager'}">
                                            <a href="shop"  class="btn btn-bold">Shop now</a>
                                            <a href="blog" class="btn btn-thin">View Blog</a>
                                        </c:if> 
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
                                        
                                          <c:if test="${ sessionScope.acc.role !='Manager'}">
                                            <a href="shop"  class="btn btn-bold">Shop now</a>
                                            <a href="blog" class="btn btn-thin">View Blog</a>
                                        </c:if>  

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
                                        
                                          <c:if test="${ sessionScope.acc.role !='Manager'}">
                                            <a href="shop"  class="btn btn-bold">Shop now</a>
                                            <a href="blog" class="btn btn-thin">View Blog</a>
                                        </c:if> 
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
                                        
                                          <c:if test="${ sessionScope.acc.role !='Manager'}">
                                            <a href="shop"  class="btn btn-bold">Shop now</a>
                                            <a href="blog" class="btn btn-thin">View Blog</a>
                                        </c:if> 
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
                                        
                                          <c:if test="${ sessionScope.acc.role !='Manager'}">
                                            <a href="shop"  class="btn btn-bold">Shop now</a>
                                            <a href="blog" class="btn btn-thin">View Blog</a>
                                        </c:if> 
                                    </p>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>



                <!--Block 04: Products-->
                <div class="Product-box sm-margin-top-96px"  style="margin-bottom: 20px;">
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-12 col-md-7 col-sm-6">
                                <div class="advance-product-box">
                                    <div class="biolife-title-box bold-style biolife-title-box__bold-style">
                                        <h3 class="title">Suggestion Product & Combo</h3>
                                    </div>
                                    <!-- menu theo bmi -->
                                    <div style="margin-bottom: 50px; color: #dc143c; font-size: 30px">
                                        ${requestScope.error}
                                    </div>
                                    <div style="margin-bottom: 20px">
                                        <form method="get" action="comboCart">
                                            <c:if test="${sessionScope.acc.role != 'Nutritionist' && sessionScope.acc.role !='Manager'}">
                                                <input onclick="getProID()" style="background-color: #7faf51; border: none; color: white" type="submit" value="add to cart"/>
                                            </c:if>
                                            <c:forEach var="m" items="${menuList}">
                                                <button type="button" class="accordion" style="margin-bottom: 10px">${m.key}</button>
                                                <div class="panel">
                                                    <c:forEach var="nameEntry" items="${m.value}">
                                                        <button type="button" class="accordion">${nameEntry.key}
                                                        </button>

                                                        <div class="panel">
                                                            <c:forEach var="menu" items="${nameEntry.value}">
                                                                <div style="margin: 10px;">
                                                                    <div>
                                                                        <a href="productDetail?ac=show&productId=${menu.productId}" class="link-to-product">
                                                                            ${menu.getName()}
                                                                        </a>

                                                                        <span style="margin-left: 10%">
                                                                            Calories: ${menu.getAverageCalories()}
                                                                        </span>
                                                                        <span style="margin-left: 10%">
                                                                            Prices: ${menu.getPrice()}
                                                                        </span>
                                                                        <input hidden class="proId" value="${menu.getProductId()}"/>
                                                                        <span>
                                                                            <c:if test="${sessionScope.acc.role != 'Nutritionist' && sessionScope.acc.role !='Manager'}">
                                                                                <c:if test="${sessionScope.acc.role=='Customer'}">
                                                                                    <a href="wishcart?ac=add&productId=${menu.productId}" class="btn wish-btn" style="margin-right: 10px;"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                                                    </c:if>
                                                                                <a href="cart?ac=addtocart&productId=${menu.productId}" class="btn btn-default">add to cart</a>
                                                                            </c:if>

                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </c:forEach>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </c:forEach>
                                            <input type="hidden" id="productId" name="productId">
                                        </form>
                                    </div>

                                    <div class="biolife-title-box bold-style biolife-title-box__bold-style">
                                        <h3 class="title">Others Product</h3>
                                    </div>
                                    <ul class="products biolife-carousel nav-center-03 nav-none-on-mobile row-space-29px"
                                        data-slick='{"rows":2,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":30,"slidesToShow":3,"responsive":[{"breakpoint":1200,"settings":{ "rows":2, "slidesToShow": 3}},{"breakpoint":992, "settings":{ "rows":2, "slidesToShow": 1}},{"breakpoint":768, "settings":{ "rows":2, "slidesToShow": 2}},{"breakpoint":500, "settings":{ "rows":2, "slidesToShow": 1}}]}'>
                                        <c:forEach items="${lProd}" var="i" varStatus="j">
                                            <li class="product-item">
                                                <div
                                                    class="contain-product right-info-layout contain-product__right-info-layout" style="border-radius: 20px">
                                                    <div class="product-thumb" style="width: 180px; height: 180px">
                                                        <a href="productDetail?ac=show&productId=${i.productId}" class="link-to-product">
                                                            <img src="assets/images/products/${i.picture}" alt="dd"  style="width: 1800px; height: 180px; object-fit: cover; border-radius: 20px" class="product-thumnail">
                                                        </a>
                                                    </div>
                                                    <div class="info">
                                                        <b class="categories">${cates.get(i.category)}</b>
                                                        <h4 class="product-title"><a href="productDetail?ac=show&productId=${i.productId}" class="pr-name">${i.name}</a></h4>
                                                        <div class="price ">
                                                            <ins><span class="price-amount"><span
                                                                        class="currencySymbol">${i.price}</span> VND</span></ins>
                                                        </div>
                                                        <di>
                                                            <p style="  margin-top: 10px">${i.averageCalories} cal</p> 
                                                            <div class="rating"><p class="star-rating"><span style="width:${(i.rate!=null?i.rate:0) * 100 / 5}%; "></span></p></div>
                                                        </di>
                                                        <div class="rating" hidden="">
                                                            <p class="star-rating"><span class="" style="width: 80%;"></span></p>
                                                            <span class="review-count">(05 Reviews)</span>
                                                        </div>
                                                        <div class="slide-down-box" style="margin-top: 10px;">
                                                            <div>
                                                                <c:if test="${sessionScope.acc.role != 'Nutritionist' && sessionScope.acc.role !='Manager'}">
                                                                    <c:if test="${sessionScope.acc.role=='Customer'}">

                                                                        <a href="wishlist?ac=add&productId=${i.productId}" class="btn wish-btn" style="margin-right: 10px;"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                                        </c:if>
                                                                    <a href="cart?ac=addtocart&productId=${i.productId}" class="btn btn-default">add to cart</a>
                                                                </c:if>
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

                <!--Block 05: Blog Posts-->
                <c:if test="${sessionScope.acc.role !='Manager'}">
                    <div class="blog-posts sm-margin-top-93px sm-padding-top-72px xs-padding-bottom-50px">
                        <div class="container">
                            <div class="biolife-title-box">
                                <span class="subtitle">The freshest and most exciting news</span>
                                <h3 class="main-title">From the Blog</h3>
                            </div>
                            <ul class="biolife-carousel nav-center nav-none-on-mobile xs-margin-top-36px"
                                data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":30,"slidesToShow":1, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 1}},{"breakpoint":992, "settings":{ "slidesToShow": 1}},{"breakpoint":768, "settings":{ "slidesToShow": 1}},{"breakpoint":600, "settings":{ "slidesToShow": 1}}]}'>
                                <c:forEach items="${bList}" var="i" varStatus="j">
                                    <li class="post-elem col-lg-12 col-md-4 col-sm-6 col-xs-12" style="    padding: 20px; border-radius: 16px; border: 2px solid #e8e8e8;">
                                        <div class="post-item effect-04 style-bottom-info">
                                            <div class="post-content col-lg-8">
                                                <div class="auth-info" style="display: flex; justify-content: space-between">
                                                    <div class="ath">
                                                        <a href="#" class="avata"><img src="assets/image/${accList.get(j.index).avatar==null?'Avatar.png': accList.get(j.index).avatar}" style="width: 35px; height: 35px; border-radius: 50%;" alt="Christian Doe">
                                                            <span style="    color: black;
                                                                  font-size: 13px; margin-left: 5px;">${accList.get(j.index).displayname}</span></a>

                                                    </div>
                                                    <div class="socials-connection">
                                                        <p class="title">${i.createAt}</p>
                                                    </div>
                                                </div>
                                                <h4 class="post-name" style="text-align: left;"><a href="blogdetail?blogId=${i.id}" class="linktopost"><p class="blog-title" style="font-weight: 700" >${i.title}</p></a></h4>

                                                <div class="excerpt">
                                                    ${i.content}
                                                </div>

                                                <div class="group-buttons">
                                                    <a href="blogdetail?blogId=${i.id}" class="btn readmore">read more</a>
                                                </div>
                                            </div>
                                            <div class="thumbnail col-lg-4" style="border-radius: 20px">
                                                <a href="blogdetail?blogId=${i.id}" class="link-to-post">
                                                    <div>
                                                        <img src="assets/images/our-blog/${i.imagePath}" style="width: 360px; height: 270px; border-radius: 20px" alt="">
                                                    </div>
                                                </a>
                                            </div>

                                        </div>
                                    </li>
                                </c:forEach>


                            </ul>
                        </div>

                    </div>
                </c:if>


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
        <script src="assets/js/nutriMenu.js"></script>
        <script>
                                                    function getProID() {
                                                        var idOfProd = document.getElementsByClassName("proId");
                                                        var list = "";
                                                        for (var i = 0; i < idOfProd.length; i++) {
                                                            list += idOfProd[i].value;
                                                            if (i < idOfProd.length - 1) {
                                                                list += "-";
                                                            }
                                                        }
                                                        // Gán chuỗi listMeals là giá trị của input 
                                                        document.getElementById("productId").value = list;
                                                        Console.log(list);
                                                    }

        </script>
    </body>


</html>
<%-- 
    Document   : productDetail
    Created on : Oct 20, 2024, 1:32:01 PM
    Author     : Norttie
--%>

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
    </head>

    <body class="biolife-body" >

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
                    <li class="nav-item"><a href="shop" class="permal-link">Shop</a></li>
                    <li class="nav-item"><span class="current-page">Product Detail</span></li>
                </ul>
            </nav>
        </div>


        <div class="page-contain single-product">
            <div class="container">

                <!--Main content--> 
                <div id="main-content" class="main-content">

                    <!--summary info--> 
                    <div class="sumary-product single-layout" style="padding-top: 90px;">
                        <div class="media">
                            <ul class="biolife-carousel slider-for" data-slick='{"arrows":false,"dots":false,"slidesMargin":30,"slidesToShow":1,"slidesToScroll":1,"fade":true,"asNavFor":".slider-nav"}'>
                                <li><img src="assets/images/products/${prod.picture}" alt="" style="width: 300px;
                                         height: 270px;
                                         object-fit: cover;
                                         border-radius: 20px;"></li>
                            </ul>
                        </div>
                        <div class="product-attribute">
                            <h3 class="title">${prod.name}</h3>
                            <div class="rating">
                                <p class="star-rating"><span style="width:${starAverage * 100 / 5}%; "></span></p>
                                <span class="review-count">(${totalReview} Reviews)</span>
                                <b class="category">Type: ${cate.get(prod.category)}</b>
                                <span class="review-count">cal: ${prod.averageCalories}</span>
                            </div>
                            <p class="sku">Source: ${prod.supplier}<span style="margin-left: 10px;">in stock:${prod.quantityInStock}</span></p>
                            <p class="excerpt">${prod.description}</p>
                            <div class="price">
                                <ins><span class="price-amount">${prod.price} <span class="currencySymbol">VND</span></span></ins>
                            </div>

                        </div>
                                <c:if test="${sessionScope.acc.role !='Manager'&& sessionScope!='Nutritionist'}">
                            <div class="action-form">
                                <div class="quantity-box">
                                    <span class="title">Quantity:</span>
                                    <div class="qty-input">
                                        <input id="quantity" class="input-qty" type="text" name="qty" value="1" data-max_value="${prod.quantityInStock}" data-min_value="1" data-step="1">
                                        <a href="#" class="qty-btn btn-ups"><i class="fa fa-caret-up" aria-hidden="true"></i></a>
                                        <a href="#" class="qty-btn btn-downs"><i class="fa fa-caret-down" aria-hidden="true"></i></a>

                                    </div>
                                </div>
                                <div class="buttons">
                                    <a  id="addToCartLink" href="cart?ac=addtocart&productId=${prod.productId}&qty=1"  class="btn add-to-cart-btn">add to cart</a>
                                    <p class="pull-row">
                                        <a href="wishcart?ac=add&productId=${prod.productId}" class="btn wishlist-btn">wishlist</a>
                                    </p>
                                </div>

                            </div>
                        </c:if>

                    </div>

                    <div class="product-tabs single-layout biolife-tab-contain">
                        <div class="tab-head">
                            <ul class="tabs">
                                <li class="tab-element active"><a href="#tab_1st" class="tab-link">Products Descriptions</a></li>
                                <li class="tab-element" ><a href="#tab_4th" class="tab-link">Customer Reviews <sup>(${totalReview})</sup></a></li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div id="tab_1st" class="tab-contain desc-tab active">
                                <p class="desc">${prod.description}</p>
                            </div>
                            <!--review-->
                            <div id="tab_4th" class="tab-contain review-tab">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
                                            <div class="rating-info">
                                                <p class="index"><strong class="rating">${starAverage}</strong>out of 5</p>
                                                <div class="rating"><p class="star-rating"><span style="width:${starAverage * 100 / 5}%; "></span></p></div>
                                                <p class="see-all">Total ${totalReview} reviews</p>
                                                <ul class="options">
                                                    <li>
                                                        <div class="detail-for">
                                                            <span class="option-name">5stars</span>
                                                            <span class="progres">
                                                                <span class="line-100percent"><span class="percent" style="width: ${star5R*100/totalReview}%;"></span></span>
                                                            </span>
                                                            <span class="number">${star5R}</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="detail-for">
                                                            <span class="option-name">4stars</span>
                                                            <span class="progres">
                                                                <span class="line-100percent"><span class="percent" style="width: ${star4R*100/totalReview}%;"></span></span>
                                                            </span>
                                                            <span class="number">${star4R}</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="detail-for">
                                                            <span class="option-name">3stars</span>
                                                            <span class="progres">
                                                                <span class="line-100percent"><span class="percent" style="width: ${star3R*100/totalReview}%;"></span></span>
                                                            </span>
                                                            <span class="number">${star3R}</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="detail-for">
                                                            <span class="option-name">2stars</span>
                                                            <span class="progres">
                                                                <span class="line-100percent"><span class="percent" style="width: ${star2R*100/totalReview}%;"></span></span>
                                                            </span>
                                                            <span class="number">${star2R}</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="detail-for">
                                                            <span class="option-name">1star</span>
                                                            <span class="progres">
                                                                <span class="line-100percent"><span class="percent" style="width: ${star1R*100/totalReview}%;"></span></span>
                                                            </span>
                                                            <span class="number">${star1R}</span>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">

                                            <c:choose>
                                                <c:when test="${sessionScope.acc.role == 'Customer'}">
                                                    <div class="review-form-wrapper">
                                                        <span class="title">Submit your review</span>
                                                        <form action="review" name="frm-review" method="post">
                                                            <input type="text" name="productId" value="${prod.productId}" hidden="true"/>
                                                            <input type="text" name="accountId" value="${sessionScope.acc.account_id}" hidden="true"/>
                                                            <div class="comment-form-rating">
                                                                <label>1. Your rating of this products:</label>
                                                                <p class="stars">
                                                                    <span>
                                                                        <a class="btn-rating" data-value="1" ><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                                        <a class="btn-rating" data-value="2" ><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                                        <a class="btn-rating" data-value="3"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                                        <a class="btn-rating" data-value="4" ><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                                        <a class="btn-rating" data-value="5" ><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                                    </span>
                                                                </p>
                                                                <input type="hidden" name="rating" id="rating-value" value="0">
                                                            </div>

                                                            <p class="form-row">
                                                                <textarea name="comment" id="txt-comment" cols="30" rows="10" placeholder="Write your review here..."></textarea>
                                                            </p>
                                                            <p class="form-row">
                                                                <button type="submit" name="submit">submit review</button>
                                                            </p>
                                                        </form>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="review-form-wrapper">
                                                        <span class="title">Submit your review</span>
                                                        <p class="form-row">

                                                            <button type="submit" name="submit" disabled=""><a href="login" style="color: inherit">Please login before review </a></button>

                                                        </p>
                                                    </div>

                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                    <div id="comments">
                                        <ol class="commentlist">
                                            <li class="review">
                                                <div class="comment-container">
                                                    <c:forEach items="${listR}" var="i" varStatus="j">
                                                        <div class="row" style="border-bottom: 1px solid #f1f1f1;">
                                                            <div class="comment-content col-lg-8 col-md-9 col-sm-8 col-xs-12">
                                                                <p class="comment-in"><span class="post-name">${accList.get(j.index).displayname}</span><span class="post-date">${i.createAt}</span></p>
                                                                <div class="rating"><p class="star-rating"><span style="width:${i.rate * 100 / 5}%; "></span></p></div>
                                                                <p class="comment-text">${i.comment}</p>
                                                            </div>
                                                        </div>
                                                    </c:forEach>

                                                </div>
                                            </li>

                                        </ol>

                                        <!--phan trang-->
                                        <div class="biolife-panigations-block ">
                                            <ul class="panigation-contain">
                                                <c:if test="${currentPage > 1}">
                                                    <li><a href="blog?page=1" class="link-page next"><i class="fa fa-angle-double-left" aria-hidden="true"></i></a></li>
                                                    <li><a href="blog?page=${currentPage-1}" class="link-page next"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
                                                        </c:if>

                                                <c:choose>
                                                    <c:when test="${currentPage > 3}">
                                                        <li><span>...</span><li/>
                                                    </c:when>
                                                </c:choose>

                                                <c:forEach begin="${(currentPage - 2) > 1 ? (currentPage - 2) : 1}" 
                                                           end="${(currentPage + 2) < totalPages ? currentPage + 2 : totalPages}" 
                                                           var="i">

                                                    <li><a href="blog?page=${i}" class="link-page ${i == currentPage ? 'current-page' : ''}">${i}</a></li>
                                                    </c:forEach>

                                                <c:choose>
                                                    <c:when test="${currentPage < totalPages - 2}">
                                                        <li><span>...</span><li/>
                                                    </c:when>
                                                </c:choose>

                                                <c:if test="${currentPage < totalPages}">
                                                    <li><a href="blog?page=${currentPage+1}" class="link-page next"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                    <li><a href="blog?page=${totalPages}" class="link-page next"><i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                                        </c:if>
                                            </ul>
                                            <div class="result-count">
                                                <p class="txt-count"><b>1-3</b> of <b>${totalReview}</b> reviews</p>
                                            </div>
                                        </div>


                                    </div>
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


    <!-- Scroll Top Button -->
    <!--    <a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>-->
    <script>
        document.querySelectorAll('.btn-rating').forEach(star => {
            star.addEventListener('click', function (e) {
                e.preventDefault(); // Ngăn chặn hành vi mặc định của thẻ <a>
                const ratingValue = this.getAttribute('data-value'); // Lấy giá trị đánh giá từ data-value
                document.getElementById('rating-value').value = ratingValue; // Cập nhật giá trị cho input ẩn
                updateStarDisplay(ratingValue); // Hàm để cập nhật giao diện các sao
            });
        });
        // Lấy các phần tử cần thao tác
        const quantityInput = document.getElementById('quantity');
        const addToCartLink = document.getElementById('addToCartLink');
        const btnUp = document.querySelector('.btn-ups');
        const btnDown = document.querySelector('.btn-downs');
        const productId = "${prod.productId}"; // Lấy productId từ server-side

        // Cập nhật giá trị href cho link "add to cart"
        function updateCartLink() {
            const quantity = quantityInput.value;
            addToCartLink.href = "cart?ac=addtocart&productId=" + productId + "&qty=" + quantity;
        }

        // Sự kiện khi nhấn nút "tăng"
        btnUp.addEventListener('click', function (event) {
            event.preventDefault();
            let currentValue = parseInt(quantityInput.value);
            const maxValue = parseInt(quantityInput.getAttribute('data-max_value'));

            if (currentValue < maxValue) {
                quantityInput.value = currentValue + 1;
                updateCartLink(); // Cập nhật link sau khi thay đổi số lượng
            }
        });

        // Sự kiện khi nhấn nút "giảm"
        btnDown.addEventListener('click', function (event) {
            event.preventDefault();
            let currentValue = parseInt(quantityInput.value);
            const minValue = parseInt(quantityInput.getAttribute('data-min_value'));

            if (currentValue > minValue) {
                quantityInput.value = currentValue - 1;
                updateCartLink(); // Cập nhật link sau khi thay đổi số lượng
            }
        });

        // Cập nhật link khi người dùng nhập trực tiếp vào ô input
        quantityInput.addEventListener('input', function () {
            updateCartLink();
        });

    </script>

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
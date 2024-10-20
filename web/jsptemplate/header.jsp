<%-- 
    Document   : header
    Created on : Sep 19, 2024, 5:01:42 PM
    Author     : manhg
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




<header id="header" class="header-area style-01 layout-03">
    <div class="header-top bg-main hidden-xs">
        <div class="container">
            <div class="top-bar left">
                <ul class="horizontal-menu">
                    <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i>Group5@gmail.com</a></li>
                    <li><a href="#">HealthyFood for healthy life</a></li>
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
                        <select name="language" style=" background: transparent;
                                border: none;
                                color: #ffffff;
                                -webkit-appearance: none;
                                -moz-appearance: none;
                                appearance: none;">
                            <option value="VND" selected>VietNam (VND)</option>
                        </select>
                    </li>
                    <li> 
                        <div>
                            <!-- Xóa phần kiểm tra và hiển thị avatar -->

                            <!-- Hiển thị tên người dùng và chuyển hướng sang cus_profile.jsp khi nhấp vào -->
                            <a href="cus_profile.jsp" class="user__name">${sessionScope.acc.username}</a>

                            <!-- Kiểm tra xem có sessionScope.acc hay không để hiển thị nút đăng xuất -->
                            <c:choose>
                                <c:when test="${not empty sessionScope.acc}">
                                    <a id="logout-btn" class="logout-btn" href="login?ac=logout">Log out</a>
                                </c:when>
                                <c:otherwise>
                                    <a href="login.jsp" class="login-link">
                                        <i class="biolife-icon icon-login"></i>Login/Register
                                    </a>
                                    <!-- Nút đăng nhập bằng Google -->

                                </c:otherwise>
                            </c:choose>
                        </div>

                    </li>

                </ul>
            </div>
        </div>
    </div>
    <div class="header-middle biolife-sticky-object ">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-2 col-md-6 col-xs-6">
                    <a href="home" class="biolife-logo"><img src="assets/images/organic-3-green.png"
                                                             alt="biolife logo" width="135" height="36"></a>
                </div>
                <div class="col-lg-6 col-md-7 hidden-sm hidden-xs">
                    <div class="primary-menu">
                        <ul class="menu biolife-menu clone-main-menu clone-primary-menu" id="primary-menu"
                            data-menuname="main menu">
                            <li class="menu-item"><a href="home">Home</a></li>
                            <li class="menu-item menu-item-has-children ">
                                <a href="shop" class="menu-name" data-title="Shop">Shop</a>

                            </li>

                            <li class="menu-item">
                                <a href="#" class="menu-name" data-title="Pages">Location</a>
                            </li>
                            <li class="menu-item menu-item-has-children ">
                                <a href="blog" class="menu-name" data-title="Blog">Blog</a>

                            </li>
                            <!--nếu đăng nhập là nutritionist thì sẽ hiện ra thanh chuyển xem list menu thay vì contact -->
                            <c:choose>
                                <c:when test="${sessionScope.acc.role == 'Nutritionist'}">
                                    <li class="menu-item"><a href="menuList">Menu</a></li>
                                    </c:when>
                                    <c:otherwise>
                                    <li class="menu-item"><a href="contact.html">Contact</a></li>
                                    </c:otherwise>
                                </c:choose>
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
                            <a href="wishcart?ac=show" class="link-to">
                                <span class="icon-qty-combine">
                                    <i class="icon-heart-bold biolife-icon"></i>
                                    <span class="qty">${sessionScope.totalWish == null?0:sessionScope.totalWish}</span>
                                </span>
                            </a>
                        </div>
                        <div class="minicart-block">
                            <div class="minicart-contain">
                                <a href="javascript:void(0)" class="link-to">
                                    <span class="icon-qty-combine">
                                        <i class="icon-cart-mini biolife-icon"></i>
                                        <span class="qty">${totalitem == null ? 0 : totalitem}</span>
                                    </span>
                                    <span class="title">My Cart -</span>
                                    <span class="sub-total">0.00VND</span>
                                </a>
                                <div class="cart-content">
                                    <div class="cart-inner">
                                        <ul class="products">
                                            <li>
                                                <c:if test="${ totalitem == 0|| totalitem == null}"><p style="text-align: center;margin-top: 15px;">You have no products in your cart!</p></c:if>  </li>
                                                <c:forEach items="${sessionScope.cart.getItems()}" var="i">
                                                <li>
                                                    <input type="text" name="productid[]" value="${i.product.productId}" hidden/>
                                                    <div class="minicart-item">
                                                        <div class="thumb">
                                                            <a href="single-product-simple.html"><img src="./assets/images/products/p-01.jpg"
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
                                                                <ins><span class="price-amount">${i.product.price}<span class="currencySymbol">đ</span></span></ins><br/>
                                                                <del><span class="price-amount">${i.product.price*110/100}<span class="currencySymbol">đ</span></span></del>
                                                            </div>

                                                        </div>

                                                    </div>
                                                </li>
                                            </c:forEach>


                                        </ul>
                                        <p class="btn-control">
                                            <a href="cart?ac=show" class="btn view-cart">view cart</a>
                                            <a href="checkout" class="btn">checkout</a>
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
                    <!--                    <div class="vertical-menu vertical-category-block ">
                                            <div class=" menu-titles block-title">
                    
                                                <span class=" menu-title">All departments</span>
                                                <span class="angle" data-tgleclass="fa fa-caret-down"><i class="fa fa-caret-up"
                                                                                                         aria-hidden="true"></i></span>
                                            </div>
                                            <div class="wrap-menu">
                                                <ul class="menu clone-main-menu">
                                                    <li class="menu-item menu-item-has-children ">
                                                        <a href="#" class="menu-name" data-title="Fruit & Nut Gifts">Fruit & Nut Gifts</a>
                                                    </li>
                                            </div>
                                        </div>-->
                    <div class="row"  style="margin-top: 10px">
                        <div class="vertical-menu vertical-category-block bmi-wrap col-lg-7" >
                            <div class="menu-titles" style="padding: 10px 10px 10px 15px;
                                 background: #7faf51;
                                 color: #fff;
                                 border-radius: 10px;">
                                <span class="menu-title"style="cursor: pointer">BMI calculator</span>
                                <span class="angle" data-tgleclass="fa fa-caret-down"><i class="fa fa-caret-down"
                                                                                         aria-hidden="true"></i></span>
                            </div>
                            <form action="bmical" method="post" class="wrap-menu" style="padding: 15px;top: 148%;left: -79px; width: 300px">
                                <table style="margin-bottom: -7px;">
                                    <tbody>
                                        <tr>
                                            <td>Height</td>
                                            <td>
                                                <input name="height" type="number" value="" required="true"/>
                                                <span style="margin-left: -27px; color: #888;" >cm</span>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>weight</td>
                                            <td>
                                                <input name="weight" type="number" value="" required="true"/>
                                                <span style="margin-left: -27px; color: #888;" >kg</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="buttons">
                                                    <button type="submit" class="btn btn-default">submit</button>
                                                </div>
                                            </td>
                                            <td><button type="reset" class="btn btn-reset">clear form</td>
                                        </tr>
                                    </tbody>
                                </table>


                            </form>
                        </div>
                        <div class="vertical-menu vertical-category-block bmi-wrap col-lg-5" style="padding: 0px 26px 3px 6px;
                             background: #ffffff;
                             color: #000000;
                             border-radius: 10px;
                             text-align: center;">
                            <p>Your BMI index: ${bmiR}</p>
                        </div>
                    </div>

                </div>
                <div class="col-lg-9 col-md-8 padding-top-2px">
                    <div class="header-search-bar layout-01">
                        <form action="shop" class="form-search" name="desktop-seacrh" method="get">
                            <input type="text" name="s" class="input-text" value="" placeholder="Search here...">

                            <button type="submit" class="btn-submit"><i
                                    class="biolife-icon icon-search"></i></button>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>

</header>



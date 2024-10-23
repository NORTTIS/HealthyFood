<%-- 
    Document   : nutriMenu
    Created on : Oct 7, 2024, 9:06:06 PM
    Author     : Minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                                    <c:if test="${not empty sessionScope.acc.avatar}">
                                        <a href="profile.jsp">
                                            <img
                                                src="./assets/images/${sessionScope.acc.avatar}"
                                                alt="avatar"
                                                class="avatar"/>
                                        </a>
                                    </c:if>
                                    <div class="user__name">${sessionScope.acc.username}</div>
                                    <c:choose>
                                        <c:when test="${not empty sessionScope.acc}">
                                            <a id="logout-btn" class="logout-btn" href="login?ac=logout">Log out</a>

                                        </c:when>
                                        <c:otherwise>
                                            <a href="login.jsp" class="login-link"><i
                                                    class="biolife-icon icon-login"></i>Login/Register</a>
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
                    </div>
                </div>
            </div>

        </header>

        <!--Hero Section-->
        <div class="hero-section hero-background style-02">
            <h1 class="page-title">Create New Menu</h1>
        </div>

        <!-- Page Contain -->
        <div class="page-contain blog-page">

            <div class="container">
                <!-- Main content -->
                <div id="main-content" class="main-content">

                    <div id="main-content">

                        <!--articles block-->
                        <form action="submitMenu" method="post">
                            <div class="contain" style="width:100%; height: 500px;">
                                <div class="create-new-meals" style=" display: flex; justify-content:space-between; margin-bottom: 100px">
                                    <div>
                                        <button type="button" class="btn btn-default" style="padding: 10px 35px" onclick="createMeals()">Create</button>
                                    </div>
                                    <select name="type" style="border-radius: 20px; padding: 0 35px">
                                        <c:forEach var="type" items="${typeList}">
                                            <option>${type}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="sidebar blog-sidebar col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div id="mealsContainer">
                                        <!<!-- nơi thêm các thẻ bữa ăn mới vào -->
                                    </div>
                                </div>
                            </div>

                            <div class="sidebar blog-sidebar col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div style="display:flex; justify-content: center; margin-bottom: 50px" >
                                    <div>
                                        <h3>Description</h3>
                                        <textarea name="description" cols="80" rows="6" placeholder="Add Description..."></textarea>
                                    </div>
                                </div>
                                <div style="display:flex; justify-content: space-around">
                                    <a href="menuList" style="background-color: #ccc; width: 120px;" class="btn btn-default"> Return</a>
                                    <input style="width:120px" type="submit" value="Create" class="btn btn-default"/>
                                </div>
                            </div>
                        </form>
                        <!--articles block end-->
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- FOOTER -->
    <div>
        <jsp:include page="./jsptemplate/footer.jsp"/>
    </div>
    <!-- Scroll Top Button -->
    <a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>

    <script src="assets/js/jquery-3.4.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/jquery.nicescroll.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/biolife.framework.js"></script>
    <script src="assets/js/functions.js"></script>
    <script>

        function createMeals() {
            let mealsContainer = document.getElementById('mealsContainer');

            // Tạo thẻ lớn Meals
            let mealsDiv = document.createElement('div');
            mealsDiv.classList.add('meals');
            mealsDiv.style.marginBottom = "20px";
            mealsDiv.style.border = "1px solid black";
            mealsDiv.style.padding = "10px";

            // Tạo tiêu đề cho thẻ Meals
            let mealsTitle = document.createElement('div');
            mealsTitle.innerHTML = '<input type="text" name="menuName" placeholder = "Input meals"/>';

            // Tạo nút để thêm MealDetail trong thẻ Meals
            let addMealDetailButton = document.createElement('button');
            addMealDetailButton.innerText = 'Thêm MealDetail';
            addMealDetailButton.setAttribute('type', 'button');
            addMealDetailButton.onclick = function () {
                createMealDetail(mealsDiv);
            };

            // Tạo nút xóa thẻ Meals
            let deleteMealsButton = document.createElement('button');
            deleteMealsButton.innerText = 'Xóa Meals';
            deleteMealsButton.style.marginLeft = "10px";
            deleteMealsButton.setAttribute('type', 'button');
            deleteMealsButton.onclick = function () {
                mealsContainer.removeChild(mealsDiv);
            };

            // Thêm các phần tử vào thẻ Meals
            mealsDiv.appendChild(mealsTitle);
            mealsDiv.appendChild(addMealDetailButton);
            mealsDiv.appendChild(deleteMealsButton);

            // Thêm thẻ Meals vào container
            mealsContainer.appendChild(mealsDiv);
        }

// Hàm tạo thẻ MealDetail
        function createMealDetail(mealsDiv) {
            // Tạo thẻ con MealDetail
            let mealDetailDiv = document.createElement('div');
            mealDetailDiv.classList.add('meal-detail');
            mealDetailDiv.style.marginTop = "10px";
            mealDetailDiv.style.border = "1px dashed grey";
            mealDetailDiv.style.padding = "5px";

            // Tạo input để nhập dữ liệu cho MealDetail
            let inputField = document.createElement('input');
            inputField.type = 'text';
            inputField.placeholder = 'Nhập thông tin MealDetail...';

            // Tạo nút xóa MealDetail
            let deleteMealDetailButton = document.createElement('button');
            deleteMealDetailButton.innerText = 'Xóa MealDetail';
            deleteMealDetailButton.style.marginLeft = "10px";
            deleteMealDetailButton.setAttribute('type', 'button');
            deleteMealDetailButton.onclick = function () {
                mealsDiv.removeChild(mealDetailDiv);
            };

            // Thêm input và nút xóa vào MealDetail
            mealDetailDiv.appendChild(inputField);
            mealDetailDiv.appendChild(deleteMealDetailButton);

            // Thêm MealDetail vào Meals
            mealsDiv.appendChild(mealDetailDiv);
        }
    </script>
</body>
</html>

<%-- 
    Document   : nutriRef
    Created on : Oct 15, 2024, 9:06:06 PM
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
        <style>
            /* Thiết lập CSS cho các nút accordion */
            .accordion {
                background-color: #f1f1f1;
                color: #444;
                cursor: pointer;
                padding: 18px;
                width: 100%;
                border: none;
                text-align: left;
                outline: none;
                font-size: 30px;
                transition: 0.4s;
            }

            /* Thêm màu cho nút khi nó được mở */
            .active, .accordion:hover {
                background-color: #ccc;
            }

            /* Ẩn nội dung mặc định */
            .panel {
                font-size: 30px;
                padding: 0 18px;
                display: none;
                background-color: white;
                overflow: hidden;
            }
        </style>
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
            <h1 class="page-title">Organic Fruits</h1>
            <!--            <nav class="biolife-nav">
                            <ul>
                                <li class="nav-item"><a href="home" class="permal-link">Home</a></li>
                                <li class="nav-item"><span class="current-page">Our Blog</span></li>
                            </ul>
                        </nav>-->
        </div>

        <!-- Page Contain -->
        <div class="page-contain blog-page">

            <div class="container">
                <!-- Main content -->
                <div id="main-content" class="main-content">

                    <div class="row">
                        <!-- Sidebar -->
                        <aside id="sidebar" class="sidebar blog-sidebar col-lg-3 col-md-4 col-sm-12 col-xs-12">
                            <div class="sidebar-contain">

                                <!--Search Widget-->
                                <div class="widget search-widget">
                                    <div class="wgt-content">
                                        <form action="" name="frm-search" method="get" class="frm-search">
                                            <input type="text" name="search" value="${searchValue}" placeholder="SEACH..." class="input-text">
                                            <input type="text" name="cate" value="${cate}" hidden/>
                                            <input type="text" name="page" value="${currentPage}" hidden/>
                                            <button type="submit"><i class="biolife-icon icon-search"></i></button>
                                        </form>
                                    </div>
                                </div>
                                <c:if test="${sessionScope.acc.role == 'Nutritionist'}">
                                    <div class="widget biolife-filter" style="border-bottom: 1px solid #e6e6e6; padding: 37px 0; margin-bottom: 20px;">
                                        <button class="btn btn-default"><a href="manageblog" style="color: inherit">Create Blog</a></button>
                                        <form action="blog" method="post" style="display: inline-block;">
                                            <input type="text" name="accId" value="${sessionScope.acc.account_id}" hidden/>
                                            <button class="btn btn-default" style="margin-left: 20px;" type="submit">My Blogs</button>
                                        </form>
                                    </div>
                                </c:if>
                                <div class="widget biolife-filter" style="border-bottom: 1px solid #e6e6e6; padding: 37px 0; margin-bottom: 20px;">
                                    <button class="btn btn-default"><a href="manageblog" style="color: inherit">Create Blog</a></button>
                                    <form action="blog" method="post" style="display: inline-block;">
                                        <input type="text" name="accId" value="${sessionScope.acc.account_id}" hidden/>
                                        <button class="btn btn-default" style="margin-left: 20px;" type="submit">My Blogs</button>
                                    </form>
                                </div>

                            </div>
                        </aside>

                        <div id="main-content" class="main-content col-lg-9 col-md-8 col-sm-12 col-xs-12">
                            <!--articles block-->
                            <div>
                                <h2>Create New Menu</h2>
                                <form action="submitMenu" method="post">
                                    <div id="meals">
                                        <!-- loại bữa ăn(sáng, chiều,...) sẽ được cho vào đây -->
                                    </div>
                                </form>
                            </div>
                            <div>
                                <h2>Create a Dynamic Form</h2>
                                <form action="submitForm" method="POST">
                                    <div id="questions">
                                        <!-- Các câu hỏi động sẽ được thêm vào đây -->
                                    </div>

                                    <button style="font-size: 30px;" type="button" onclick="addQuestion()">Add Question</button>
                                    <button type="button" onclick="removeQuestion()">Remove Last Question</button><br><br>

                                    <input type="submit" value="Submit">
                                </form>
                                <h2>Accordion Example</h2>

                                <!-- Nút accordion đầu tiên -->
                                <button class="accordion">Section 1</button>
                                <div class="panel">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus.</p>
                                </div>

                                <!-- Nút accordion thứ hai -->
                                <button class="accordion">Section 2</button>
                                <div class="panel">
                                    <p>Vestibulum at eros eu orci cursus pellentesque. Nam porttitor.</p>
                                </div>

                                <!-- Nút accordion thứ ba -->
                                <button class="accordion">Section 3</button>
                                <div class="panel">
                                    <p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
                                </div>
                            </div>
                            <!--articles block end-->
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
        <script src="assets/js/jquery.nicescroll.min.js"></script>
        <script src="assets/js/slick.min.js"></script>
        <script src="assets/js/biolife.framework.js"></script>
        <script src="assets/js/functions.js"></script>

    </body>
    <script>
                                        let questionCount = 0;
                                        function addQuestion() {
                                            questionCount++;
                                            const questionsDiv = document.getElementById('questions');
                                            // Tạo một div cho mỗi câu hỏi
                                            const questionDiv = document.createElement('div');
                                            questionDiv.id = `question_${questionCount}`;

                                            // Tạo label và input cho câu hỏi
                                            questionDiv.innerHTML = `
                <label for="question_${questionCount}">Question ${questionCount}:</label><br>   
                <input type="text" name="question_${questionCount}" id="question_${questionCount}" required><br><br>`;
                                            questionsDiv.appendChild(questionDiv);
                                        }

                                        function removeQuestion() {
                                            if (questionCount > 0) {
                                                const questionsDiv = document.getElementById('questions');
                                                const lastQuestion = document.getElementById(`question_${questionCount}`);
                                                questionsDiv.removeChild(lastQuestion);
                                                questionCount--;
                                            }
                                        }


                                        // Lấy tất cả các phần tử có class "accordion"
                                        var acc = document.getElementsByClassName("accordion");

                                        // Lặp qua từng accordion để gán sự kiện click
                                        for (var i = 0; i < acc.length; i++) {
                                            acc[i].addEventListener("click", function () {
                                                // Toggle giữa việc thêm và bỏ class "active"
                                                this.classList.toggle("active");

                                                // Lấy phần tử panel kế tiếp và điều khiển việc hiện/ẩn
                                                var panel = this.nextElementSibling;
                                                if (panel.style.display === "block") {
                                                    panel.style.display = "none";
                                                } else {
                                                    panel.style.display = "block";
                                                }
                                            });
                                        }
    </script>
</html>

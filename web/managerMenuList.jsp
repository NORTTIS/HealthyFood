

<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <link rel="stylesheet" href="assets/css/slick.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/main-color03-green.css">
        <link rel="stylesheet" href="assets/css/nutriMenu.css">
    </head>
    <body class="biolife-body">

        <!--Preloader-->
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
        <jsp:include page="./jsptemplate/header.jsp"/>

        <!--Hero Section-->
        <div class="hero-section hero-background style-02">
            <h1 class="page-title">Menu List</h1>
        </div>
        <!-- Page Contain -->
        <div class="page-contain blog-page">

            <div class="container">
                <!-- Main content -->
                <div id="main-content" class="main-content">

                    <!-- Sidebar -->
                    <aside id="sidebar" class="sidebar blog-sidebar col-lg-3 col-md-4 col-sm-12 col-xs-12">
                        <div class="sidebar-contain">

                            <!--Search Widget-->
                            <div class="widget search-widget">
                                <div class="wgt-content">

                                    <form action="listMenu" name="frm-search" method="get" class="frm-search">

                                        <select name="search" style="border-radius: 30px;width: 100% ;height: auto; font-size: large;">
                                            <option>All</option>
                                            <option value="Accept">Accept</option>
                                            <option value="Reject">Reject</option>
                                            <option value="In Process">In Process</option>
                                        </select>
                                        <button type="submit"><i class="biolife-icon icon-search"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </aside>

                    <div  class="sidebar blog-sidebar col-lg-9 col-md-8 col-sm-12 col-xs-12">
                        <c:forEach var="m" items="${historyList}">
                            <form action="reviewMenu" style="display: inline" method="get">
                                <input type="text" value="${m.key}" name="theMenu" hidden/>
                                <button style="margin-bottom: 10px" class="viewDetail">Review menu</button>
                            </form>
                            <button class="accordion" style="margin-bottom: 10px; background-color: #7faf51 ">${m.key}</button>

                            <div class="panel">
                                <c:forEach var="nameEntry" items="${m.value}">
                                    <button class="accordion">${nameEntry.key}</button>
                                    <div class="panel">
                                        <c:forEach var="menu" items="${nameEntry.value}">
                                            <div style="margin: 10px; display: flex; justify-content: space-between">
                                                <div>
                                                    ${menu.menu_name}
                                                </div>
                                                <div>
                                                    Calories: ${menu.getAverage_calories()}
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:forEach>
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
        <script src="assets/js/nutriMenu.js"></script>

    </body>

</html>


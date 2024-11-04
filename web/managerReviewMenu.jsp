<%-- 
    Document   : managerReviewMenu
    Created on : Oct 30, 2024, 3:10:47 PM
    Author     : Gosu
--%>


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
            <h1 class="page-title">Menu Detail</h1>
        </div>
        <!-- Page Contain -->
        <div class="page-contain blog-page">

            <div class="container">
                <!-- Main content -->
                <div id="main-content" class="main-content">

                    <div  class="sidebar blog-sidebar col-lg-12 col-md-12 col-sm-12 col-xs-12" 
                          style="
                          border: 1px solid;
                          padding: 10px;
                          box-shadow: 5px 10px 90px 10px #888888;
                          margin: 10px 25%;
                          width: 55%;">
                        <div style="border: 1px solid black; margin-bottom: 15px; padding: 5px; width: 50%"> 
                            Status: ${status} - Type: ${typeC}
                        </div>
                        <form action="reviewMenu" method="post">
                            <div class="create-new-meals" style=" display: flex; justify-content:space-between; margin-bottom: 15px">
                                <input type="text" name="menuTitle" style="border-radius: 20px" value="${menuTitle}" readonly/>
                            </div>

                            <div id="mealsContainer">
                                <!-- nơi thêm các thẻ bữa ăn mới vào -->
                                <c:forEach var="entry" items="${detailMenu}">
                                    <div class="meals" style="margin-bottom: 20px; border: 1px solid black; padding: 10px;" data-id="${count}">
                                        <div style="margin-bottom: 20px;">
                                            <input class="mealsID" type="text" name="${count}" value="${entry.key}" readonly />
                                        </div>
                                        <c:forEach var="menu" items="${entry.value}" varStatus="status">
                                            <div class="meal-detail" style="margin-top: 10px; border: 1px dashed grey; padding: 5px;">
                                                <input type="text" name="menuName${count}" value="${menu.menu_name}" readonly />
                                                <input type="number" name="calories${count}" value="${menu.getAverage_calories()}" readonly style="margin: 0 25px; outline: none; padding: 7px 20px;" />
                                            </div>
                                            <c:set var="cmt" value="${menu.getDescription()}"/>
                                            <!-- lấy id của phần tử đầu tiên và cuối cùng để xóa -->
                                            <c:if test="${status.first && empty firstMenuId}">
                                                <c:set var="firstMenuId" value="${menu.getMenu_id()}" />
                                            </c:if>
                                            <!-- Kiểm tra nếu là phần tử cuối cùng -->
                                            <c:if test="${status.last}">
                                                <c:set var="lastMenuId" value="${menu.getMenu_id()}" />
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="sidebar blog-sidebar col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div style="display:flex; justify-content: center; margin-bottom: 50px" >
                                    <div>
                                        <h3>Description</h3>
                                        <textarea required name="description" cols="80" rows="6" >${cmt}</textarea>
                                    </div>
                                </div>
                                <div style="display:flex; justify-content: space-around">
                                    <a href="listMenu" style="background-color: #ccc; width: 120px;" class="btn btn-default">Return</a>
                                    <input type="number" hidden value="${lastMenuId}" name="lastId"/>
                                    <input type="number" hidden value="${firstMenuId}" name="firstId"/>
                                    <input onclick="getAllMeals();" style="width:120px; background-color: red" type="submit" name="action" value="Reject" class="btn btn-default"/>
                                    <input style="width:120px" type="submit" name="action" value="Accept" class="btn btn-default"/>
                                </div>
                            </div>
                        </form>
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
        <script>

                                        //function lấy name từ các meals theo class
                                        function getAllMeals() {
                                            var idOfMeal = document.getElementsByClassName("mealsID");
                                            var listDish = "";
                                            var lishMeals = "";
                                            for (var i = 0; i < idOfMeal.length; i++) {
                                                listDish += idOfMeal[i].name; // Thêm giá trị name vào chuỗi
                                                lishMeals += idOfMeal[i].value;
                                                if (i < idOfMeal.length - 1) {
                                                    listDish += "-"; // Nếu không phải phần tử cuối, thêm dấu ';'
                                                    lishMeals += "-";
                                                }
                                            }
                                            // Gán chuỗi listMeals là giá trị của input 
                                            document.getElementById("allMealList").value = listDish;
                                            document.getElementById("getMeals").value = lishMeals;
                                            console.log(document.getElementById("allMealList").value);
                                            console.log(document.getElementById("getMeals").value);
                                        }
        </script>
    </body>


</html>


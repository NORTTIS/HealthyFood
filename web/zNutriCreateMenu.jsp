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
    <jsp:include page="./jsptemplate/header.jsp"/>

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
                    <form action="createMenu" method="post">
                        <div class="contain" style="width:100%; height: 500px;">
                            <div class="create-new-meals" style=" display: flex; justify-content:space-between; margin-bottom: 100px">
                                <button type="button" class="btn btn-default" style="padding: 10px 35px" onclick="createMeals()">Create</button>
                                <input type="text" name="menuTitle" style="border-radius: 20px" placeholder="Menu title..." required/>
                                <select name="type" style="border-radius: 20px; padding: 0 35px">
                                    <c:forEach var="type" begin="0" items="${typeList}" end="3">
                                        <option>${type}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <center>
                                <div style=" color: #dc143c; font-size: 30px">
                                    ${requestScope.createMenuCaution}
                                </div>
                            </center>
                            <div class="sidebar blog-sidebar col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div id="mealsContainer">
                                    <!-- nơi thêm các thẻ bữa ăn mới vào -->

                                </div>
                            </div>
                        </div>

                        <div class="sidebar blog-sidebar col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div style="display:flex; justify-content: center; margin-bottom: 50px" >
                                <div>
                                    <h3>Description</h3>
                                    <textarea required name="description" cols="80" rows="6" placeholder="Add Description..."></textarea>
                                </div>
                            </div>
                            <div style="display:flex; justify-content: space-around">
                                <a href="menuList" style="background-color: #ccc; width: 120px;" class="btn btn-default"> Return</a>
                                <input type="text" value="${sessionScope.acc.getAccount_id()}" name="nutriId" hidden/>
                                <input id="getMeals" type="text" name="getMeals" hidden/>
                                <input id="allMealList" type="text" name="lstMeal" hidden/>
                                <input onclick="getAllMeals();" style="width:120px" type="submit" value="Send" class="btn btn-default"/>
                            </div>
                        </div>
                    </form>
                    <!--articles block end-->
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
                                    var count = 0;
                                    function createMeals() {
                                        count++;
                                        let mealsContainer = document.getElementById('mealsContainer');

                                        // Create main meals div
                                        let mealsDiv = document.createElement('div');
                                        mealsDiv.classList.add('meals');
                                        mealsDiv.style.marginBottom = "20px";
                                        mealsDiv.style.border = "1px solid black";
                                        mealsDiv.style.padding = "10px";
                                        mealsDiv.setAttribute('data-id', count); // Add unique data-id attribute

                                        // Title input for meals
                                        let mealsTitle = document.createElement('div');
                                        mealsTitle.innerHTML = '<input class="mealsID" type="text" name="' + count + '" placeholder="Meals name" required/>';
                                        mealsTitle.style.marginBottom = "20px";


                                        // Button to add meal details
                                        let addMealDetailButton = document.createElement('button');
                                        addMealDetailButton.innerText = 'Add dish';
                                        addMealDetailButton.setAttribute('type', 'button');
                                        addMealDetailButton.classList.add('btn', 'btn-default');
                                        addMealDetailButton.onclick = function () {
                                            createMealDetail(mealsDiv);
                                        };

                                        // Button to delete meal
                                        let deleteMealsButton = document.createElement('button');
                                        deleteMealsButton.innerText = 'Delete meals';
                                        deleteMealsButton.style.marginLeft = "10px";
                                        deleteMealsButton.setAttribute('type', 'button');
                                        deleteMealsButton.classList.add('btn', 'btn-default');
                                        deleteMealsButton.onclick = function () {
                                            mealsContainer.removeChild(mealsDiv);
                                        };

                                        // Append elements to the meals div
                                        mealsDiv.appendChild(mealsTitle);
                                        mealsDiv.appendChild(addMealDetailButton);
                                        mealsDiv.appendChild(deleteMealsButton);

                                        // Append meals div to the container
                                        mealsContainer.appendChild(mealsDiv);
                                    }

                                    // Function to create meal details
                                    function createMealDetail(mealsDiv) {
                                        // Create meal detail div
                                        let mealDetailDiv = document.createElement('div');
                                        mealDetailDiv.classList.add('meal-detail');
                                        mealDetailDiv.style.marginTop = "10px";
                                        mealDetailDiv.style.border = "1px dashed grey";
                                        mealDetailDiv.style.padding = "5px";

                                        let mealID = mealsDiv.getAttribute('data-id'); // Retrieve the meal's data-id

                                        // Dish name input field
                                        let inputField = document.createElement('input');
                                        inputField.type = 'text';
                                        inputField.placeholder = 'Input dish';
                                        inputField.name = 'menuName' + mealID;
                                        inputField.required = true;

                                        // Calories input field
                                        let inputCalo = document.createElement('input');
                                        inputCalo.type = 'number';
                                        inputCalo.placeholder = 'Input calories';
                                        inputCalo.style = 'margin: 0 25px; outline: none; padding: 7px 20px';
                                        inputCalo.name = 'calories' + mealID;
                                        inputCalo.required = true;

                                        // Delete button for meal detail
                                        let deleteMealDetailButton = document.createElement('button');
                                        deleteMealDetailButton.innerText = 'Delete dish';
                                        deleteMealDetailButton.style.marginLeft = "10px";
                                        deleteMealDetailButton.setAttribute('type', 'button');
                                        deleteMealDetailButton.classList.add('btn', 'btn-default');
                                        deleteMealDetailButton.onclick = function () {
                                            mealsDiv.removeChild(mealDetailDiv);
                                        };

                                        // Append elements to the meal detail div
                                        mealDetailDiv.appendChild(inputField);
                                        mealDetailDiv.appendChild(inputCalo);
                                        mealDetailDiv.appendChild(deleteMealDetailButton);

                                        // Append meal detail div to the main meals div
                                        mealsDiv.appendChild(mealDetailDiv);
                                    }


                                    //function lấy name từ các meals theo class
                                    function getAllMeals() {
                                        var idOfMeal = document.getElementsByClassName("mealsID");
                                        var listDish = "";
                                        var lishMeals = "";
                                        for (var i = 0; i < count; i++) {
                                            listDish += idOfMeal[i].name; // Thêm giá trị name vào chuỗi
                                            lishMeals += idOfMeal[i].value;
                                            if (i < count - 1) {
                                                listDish += "-"; // Nếu không phải phần tử cuối, thêm dấu ';'
                                                lishMeals += "-";
                                            }
                                        }
                                        // Gán chuỗi listMeals là giá trị của input 
                                        document.getElementById("allMealList").value = listDish;
                                        document.getElementById("getMeals").value = lishMeals;
                                    }
        </script>

</html>

<%-- 
    Document   : zNutriMenuDetail
    Created on : Oct 27, 2024, 2:29:10 PM
    Author     : Minh
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
                        <c:set var="count" value="1"/>
                        <div style="border: 1px solid black; margin-bottom: 15px; padding: 5px; width: 50%"> 
                            Status: ${status} - Type: ${typeC}
                        </div>
                        <form action="viewDetail" method="post">
                            <div class="create-new-meals" style=" display: flex; justify-content:space-between; margin-bottom: 15px">
                                <!--<button type="button" class="btn btn-default" style="padding: 10px 35px" onclick="createMeals()">Create</button>-->
                                <input type="text" name="menuTitle" style="border-radius: 20px" value="${menuTitle}" required/>
                                <select name="type" style="border-radius: 20px; padding: 0 35px">
                                    <c:forEach var="type" items="${typeList}">
                                        <option value="${type}">${type}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div id="mealsContainer">
                                <!-- nơi thêm các thẻ bữa ăn mới vào -->
                                <c:forEach var="entry" items="${detailMenu}">
                                    <div class="meals" style="margin-bottom: 20px; border: 1px solid black; padding: 10px;" data-id="${count}">
                                        <div style="margin-bottom: 20px;">
                                            <input class="mealsID" type="text" name="${count}" value="${entry.key}" required />
                                        </div>
                                        <!--                                        <button type="button" class="btn btn-default" onclick="createMealDetail(this.parentElement)">Add dish</button>
                                                                                <button type="button" class="btn btn-default" style="margin-left: 10px;" onclick="document.getElementById('mealsContainer').removeChild(this.parentElement)">Delete meals</button>-->
                                        <c:forEach var="menu" items="${entry.value}" varStatus="status">
                                            <div class="meal-detail" style="margin-top: 10px; border: 1px dashed grey; padding: 5px;">
                                                <input type="text" name="menuName${count}" value="${menu.menu_name}" required />
                                                <input type="number" name="calories${count}" value="${menu.getAverage_calories()}" required style="margin: 0 25px; outline: none; padding: 7px 20px;" />
                                                <!--<button type="button" class="btn btn-default" onclick="this.parentElement.remove()">Delete dish</button>-->
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
                                        <c:set var="count" value="${count + 1}"/>
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
                                    <a href="menuHistory" style="background-color: #ccc; width: 120px;" class="btn btn-default">Return</a>
                                    <input type="text" value="${sessionScope.acc.getAccount_id()}" name="nutriId" hidden/>
                                    <input id="getMeals" type="text" name="getMeals" hidden/>
                                    <input id="allMealList" type="text" name="lstMeal" hidden/>
                                    <input type="number" hidden value="${lastMenuId}" name="lastId"/>
                                    <input type="number" hidden value="${firstMenuId}" name="firstId"/>
                                    <input onclick="getAllMeals();" style="width:120px; background-color: red" type="submit" name="action" value="Delete" class="btn btn-default"/>
                                    <input onclick="getAllMeals();" style="width:120px" type="submit" name="action" value="Update" class="btn btn-default"/>
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
                                        var count = ${count};
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


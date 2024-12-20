<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
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

        <!-- Quill CSS -->
        <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">

        <!-- Quill JavaScript -->
        <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

        <style>
            #editor-container {
                height: 300px;
            }
        </style>
    </head>
    <body class="biolife-body">
        <c:if test="${sessionScope.bmiR==null}">
            <c:redirect url="bmi.jsp"/>
        </c:if>
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
        <div class="container">
            <h2 style="font-weight: bold; border-top: 1px solid #e6e6e6; margin-top: 20px;">
                ${product == null ? 'Create a new Product' : 'Update Product'}
            </h2>

            <form class="row" id="editor-form" action="manageproduct" method="post" enctype="multipart/form-data">
                <input type="text" name="nutriId" value="${sessionScope.acc.account_id}" hidden/>
                <input type="text" name="productId" value="${product.id}" hidden/>
                <input type="text" name="ac" value="${product == null ? 'create' : 'upd'}" hidden/>

                <div class="col-lg-4">
                    <!-- Product Name -->
                    <label for="name">Product Name:</label><br>
                    <input type="text" id="name" name="name" value="${product != null ? product.name : ''}" required><br><br>

                     <!-- Quantity -->
                    <label for="quantity">Quantity:</label><br>
                    <input type="number" id="quantity" name="quantityInStock" value="${product != null ? product.quantityInStock : ''}" min="1" required><br><br>
                    
                    <!-- Description -->
                    <label for="description">Description:</label><br>
                    <textarea id="description" name="description" rows="4" required>${product != null ? product.description : ''}</textarea><br><br>
                    

                   
                    


                </div>

                <div class="col-lg-4">
                    <!-- Category -->
                    <label for="category">Category:</label><br>
                    <select id="category" name="categoryId" required>
                        <c:forEach var="cat" items="${productCate}">
                            <option value="${cat.key}" ${product != null && product.categoryId == cat.key ? 'selected' : ''}>${cat.value}</option>
                        </c:forEach>
                    </select><br><br>


                    <!-- Price -->
                    <label for="price">Price:</label><br>
                    <input type="number" id="price" name="price" value="${product != null ? product.price : ''}" min="1" step="1" required><br><br>
                    
                    <!-- Image Upload -->
                    <label for="picture">Upload Image:</label><br>
                    <input type="file" id="picture" name="picture" accept="image/*" ${product == null ? 'required' : ''}><br><br>
                </div>

                <div class="col-lg-4">
                    <!-- Supplier -->
                    <label for="supplier">Supplier:</label><br>
                    <input type="text" id="supplier" name="supplier" value="${product != null ? product.supplier : ''}" required><br><br>                    

                    <!-- Average Calories -->
                    <label for="average_calories">Average Calories:</label><br>
                    <input type="number" id="average_calories" name="averageCalories" value="${product != null ? product.averageCalories : ''}" min="0.01" step="0.01" required><br><br>

                    <p class="text-danger">${error}</p>
                </div>

                <div class="col-lg-12"> 
                    <button type="submit" class="btn btn-default" style="margin-bottom: 10px;">Submit</button>
                </div>
            </form>
        </div>

        <!-- FOOTER -->
        <jsp:include page="./jsptemplate/footer.jsp" />
        <script>
            // Initialize Quill editor
            var quill = new Quill("#editor-container", {
                theme: "snow",
                placeholder: '',
                modules: {
                    toolbar: [
                        [{'header': [1, 2, false]}],
                        ['bold', 'italic', 'underline'],
                        [{'list': 'ordered'}, {'list': 'bullet'}],
                        ['link', 'image'],
                        ['clean']
                    ]
                },
                charset: "UTF-8"
            });

            quill.root.innerHTML = `${product.description}`;

            // Bắt sự kiện submit form để gán nội dung của Quill vào input hidden
            document.getElementById('editor-form').onsubmit = function () {
                var description = document.querySelector('input[name=description]');
                description.value = quill.root.innerHTML;
            };
        </script>

        <!-- Scroll Top Button -->
        <a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>

        <script src="assets/js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.countdown.min.js"></script>
        <script src="assets/js/slick.min.js"></script>
        <script src="assets/js/biolife.framework.js"></script>
        <script src="assets/js/jquery.nicescroll.min.js"></script>
        <script src="assets/js/functions.js"></script>
    </body>
</html>

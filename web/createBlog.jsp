<%-- 
    Document   : createBlog
    Created on : Oct 7, 2024, 9:43:38 PM
    Author     : Norttie
--%>

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
            <!-- Preloader loading-->
            <h2 style="font-weight: bold;border-top: 1px solid #e6e6e6; margin-top: 20px;">
                ${blog == null ? 'Create a new Blog' : 'Update Blog'}
            </h2>

            <form class="row" id="editor-form" action="manageblog" method="post" enctype="multipart/form-data">
                <input type="text" name="nutriId" value="${sessionScope.acc.account_id}" hidden/>
                <input type="text" name="BlogId" value="${blog.id}" hidden/>
                <input type="text" name="ac" value="${blog==null?'create':'upd'}" hidden/>
                <div class="col-lg-4">
                    <label for="title">Blog Title:</label><br>
                    <input type="text" id="title" name="title" value="${blog.title}" required><br><br>

                    <label for="thumbnail">Upload Thumbnail:</label><br>
                    <input type="file" id="thumbnail" name="thumbnail" accept="image/*" ${blog == null ? 'required' : ''}><br><br>
                    <p class="text-danger">${error}</p>
                </div>
                <div class="col-lg-4">
                    <label for="title">Category</label><br>
                    <select id="category" name="category">
                        <c:forEach items="${blogCate}" var="entry">
                            <option value="${entry.key}" ${blog.category == entry.key ? 'selected' : ''}>${entry.value}</option>
                        </c:forEach>
                    </select>

                </div>
                <div class="col-lg-4">
                    <label for="title">Bmi range</label><br>
                    <select id="category" name="bmirange">
                        <option value="1">BMI < 18.5</option>
                        <option value="2">18.5 <= BMI < 24.9</option>
                        <option value="3">25 <= BMI < 29.9</option> 
                        <option value="4">BMI >= 30</option>
                        <option value="5">All BMIs</option>
                    </select>

                </div>
                <div class="col-lg-12">
                    <label for="editor-container">Content:</label><br>
                    <div id="editor-container"></div><br>
                    <!-- Hidden input to store blog content -->
                    <input type="hidden" name="content" />
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

            quill.root.innerHTML = `${blog.content}`;

            // Bắt sự kiện submit form để gán nội dung của Quill vào input hidden
            document.getElementById('editor-form').onsubmit = function () {
                var content = document.querySelector('input[name=content]');
                content.value = quill.root.innerHTML;
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






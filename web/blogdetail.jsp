<%-- 
    Document   : blogdetail
    Created on : Oct 6, 2024, 9:07:33 PM
    Author     : Norttie
--%>

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
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/slick.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/main-color03-green.css">
    </head>
    <body class="biolife-body">

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

        <!--Hero Section-->
        <div class="hero-section hero-background style-02">
            <h1 class="page-title">Organic Fruits</h1>
            <nav class="biolife-nav">
                <ul>
                    <li class="nav-item"><a href="index-2.html" class="permal-link">Home</a></li>
                    <li class="nav-item"><span class="current-page">Our Blog</span></li>
                </ul>
            </nav>
        </div>

        <!-- Page Contain -->
        <div class="page-contain blog-page left-sidebar">
            <div class="container blogdetail">
                <div class="row">

                    <!-- Main content -->
                    <div id="main-content" class="main-content col-lg-9 col-md-8 col-sm-12 col-xs-12">

                        <!--Single Post Contain-->
                        <div class="single-post-contain">

                            <div class="post-head">
                                <h2 class="post-name">${blog.title}</h2>
                                <p class="post-archive" style="border-bottom: 1px solid #e6e6e6;"><b class="post-cat">${cate}</b><span class="post-date"> / ${blog.createAt}</span><span class="author">Posted By: ${author.displayname}</span></p>
                                <div class="thumbnail">
                                    <figure><img src="assets/images/our-blog//${blog.imagePath}" width="870" height="635" alt=""></figure>
                                </div>
                                
                            </div>

                            <div class="post-content">
                                ${blog.content}
                            </div>

                            <div class="post-foot">



                                <div class="auth-info">
                                    <div class="ath">
                                        <a href="#" class="avata"><img src="assets/images/user-avatar/Avatar.png" style="width: 30px; height: 30px;" alt="Christian Doe">${author.displayname}</a>

                                    </div>
                                    <div class="socials-connection">
                                        <span class="title">Shared:${blog.createAt}</span>

                                    </div>
                                </div>

                            </div>

                        </div>



                    </div>

                    <!-- Sidebar -->
                    <aside id="sidebar" class="sidebar blog-sidebar col-lg-3 col-md-4 col-sm-12 col-xs-12">



                        <div class="sidebar-contain">

                            <!--Search Widget-->
                            <div class="widget search-widget">
                                <div class="wgt-content">
                                    <form action="blog" name="frm-search" method="get" class="frm-search">
                                        <input type="text" name="s" value="" placeholder="SEACH..." class="input-text">
                                        <button type="submit" name="ok"><i class="biolife-icon icon-search"></i></button>
                                    </form>
                                </div>
                            </div>

                            <!--Categories Widget-->
                            <div class="widget biolife-filter" style="border-bottom: 1px solid #e6e6e6; margin-bottom: 37px;">
                                 <h4 class="wgt-title"><a href="blog" class="" style="color:inherit">Category</a></h4>
                                <div class="wgt-content">
                                    <ul class="cat-list">
                                        <li class="cat-list-item"><a href="blog?cate=1" class="cat-link">Food</a></li>
                                        <li class="cat-list-item"><a href="blog?cate=2" class="cat-link">Health</a></li>
                                        <li class="cat-list-item"><a href="blog?cate=3" class="cat-link">Tip & trick</a></li>
                                        <li class="cat-list-item"><a href="blog?cate=4" class="cat-link">Cook</a></li>
                                        <li class="cat-list-item"><a href="blog?cate=5" class="cat-link">Diet</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </aside>
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
</body>

</html>
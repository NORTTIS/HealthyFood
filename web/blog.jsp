<%-- 
    Document   : blog
    Created on : Oct 6, 2024, 12:43:06 PM
    Author     : Norttie
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <li class="nav-item"><a href="home" class="permal-link">Home</a></li>
                    <li class="nav-item"><span class="current-page">Our Blog</span></li>
                </ul>
            </nav>
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
                                        <form action="#" name="frm-search" method="get" class="frm-search">
                                            <input type="text" name="s" value="" placeholder="SEACH..." class="input-text">
                                            <button type="submit" name="ok"><i class="biolife-icon icon-search"></i></button>
                                        </form>
                                    </div>
                                </div>

                                <!--Categories Widget-->
                                <div class="widget biolife-filter" style="border-bottom: 1px solid #e6e6e6; margin-bottom: 37px;">
                                    <h4 class="wgt-title">Categories</h4>
                                    <div class="wgt-content">
                                        <ul class="cat-list">
                                            <li class="cat-list-item"><a href="#" class="cat-link">Beauty (30)</a></li>
                                            <li class="cat-list-item"><a href="#" class="cat-link">Fashion (50)</a></li>
                                            <li class="cat-list-item"><a href="#" class="cat-link">Food (10)</a></li>
                                            <li class="cat-list-item"><a href="#" class="cat-link">Life Style (60)</a></li>
                                            <li class="cat-list-item"><a href="#" class="cat-link">Travel (10)</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <button class="btn btn-default"><a href="createBlog" style="color: inherit">Create Blog</a></button>
                            </div>
                        </aside>

                        <div id="main-content" class="main-content col-lg-9 col-md-8 col-sm-12 col-xs-12">
                            <!--articles block-->
                            <ul class="posts-list main-post-list">
                                <!--loop post here-->
                                <li class="post-elem col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="post-item effect-04 style-bottom-info">
                                        <div class="thumbnail">
                                            <a href="blogdetail?id=1" class="link-to-post"><img src="assets/images/our-blog/post-thumb-01.jpg" width="370" height="270" alt=""></a>
                                        </div>
                                        <div class="post-content">
                                            <h4 class="post-name"><a href="blogdetail?id=1" class="linktopost">Blog 1</a></h4>
                                            <p class="post-archive"><b class="post-cat">ORGANIC</b><span class="post-date"> / 20 - 10 - 2018</span><span class="author">Posted By: Norttis the nutri</span></p>
                                            <p class="excerpt">Did you know that is a example description...</p>
                                            <div class="group-buttons">
                                                <a href="blogdetail?id=1" class="btn readmore">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="post-elem col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="post-item effect-04 style-bottom-info">
                                        <div class="thumbnail">
                                            <a href="blogdetail?id=1" class="link-to-post"><img src="assets/images/our-blog/post-thumb-01.jpg" width="370" height="270" alt=""></a>
                                        </div>
                                        <div class="post-content">
                                            <h4 class="post-name"><a href="blogdetail?id=1" class="linktopost">Blog 1</a></h4>
                                            <p class="post-archive"><b class="post-cat">ORGANIC</b><span class="post-date"> / 20 - 10 - 2018</span><span class="author">Posted By: Norttis the nutri</span></p>
                                            <p class="excerpt">Did you know that is a example description...</p>
                                            <div class="group-buttons">
                                                <a href="blogdetail?id=1" class="btn readmore">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="post-elem col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="post-item effect-04 style-bottom-info">
                                        <div class="thumbnail">
                                            <a href="blogdetail?id=1" class="link-to-post"><img src="assets/images/our-blog/post-thumb-01.jpg" width="370" height="270" alt=""></a>
                                        </div>
                                        <div class="post-content">
                                            <h4 class="post-name"><a href="blogdetail?id=1" class="linktopost">Blog 1</a></h4>
                                            <p class="post-archive"><b class="post-cat">ORGANIC</b><span class="post-date"> / 20 - 10 - 2018</span><span class="author">Posted By: Norttis the nutri</span></p>
                                            <p class="excerpt">Did you know that is a example description...</p>
                                            <div class="group-buttons">
                                                <a href="blogdetail?id=1" class="btn readmore">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="post-elem col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="post-item effect-04 style-bottom-info">
                                        <div class="thumbnail">
                                            <a href="blogdetail?id=1" class="link-to-post"><img src="assets/images/our-blog/post-thumb-01.jpg" width="370" height="270" alt=""></a>
                                        </div>
                                        <div class="post-content">
                                            <h4 class="post-name"><a href="blogdetail?id=1" class="linktopost">Blog 1</a></h4>
                                            <p class="post-archive"><b class="post-cat">ORGANIC</b><span class="post-date"> / 20 - 10 - 2018</span><span class="author">Posted By: Norttis the nutri</span></p>
                                            <p class="excerpt">Did you know that is a example description...</p>
                                            <div class="group-buttons">
                                                <a href="blogdetail?id=1" class="btn readmore">read more</a>
                                            </div>
                                        </div>
                                    </div>
                               
                               
                                
                                
                                
                            </ul>
                        </div>
                    </div>


                    <div class="biolife-panigations-block ">
                        <ul class="panigation-contain">
                            <c:if test="${currentPage > 1}">
                                <li><a href="blogdetail?page=1" class="link-page next"><i class="fa fa-angle-double-left" aria-hidden="true"></i></a></li>
                                <li><a href="blogdetail?page=1" class="link-page next"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
                                    </c:if>

                            <c:choose>
                                <c:when test="${currentPage > 3}">
                                    <li><span>...</span><li/>
                                </c:when>
                            </c:choose>

                            <c:forEach begin="${(currentPage - 2) > 1 ? (currentPage - 2) : 1}" 
                                       end="${(currentPage + 2) < totalPages ? currentPage + 2 : totalPages}" 
                                       var="i">

                                <li><a href="blogdetail?page=1" class="link-page ${i == currentPage ? 'current-page' : ''}">${i}</a></li>
                                </c:forEach>

                            <c:choose>
                                <c:when test="${currentPage < totalPages - 2}">
                                    <li><span>...</span><li/>
                                </c:when>
                            </c:choose>

                            <c:if test="${currentPage < totalPages}">
                                <li><a href="blogdetail?page=1" class="link-page next"><i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                <li><a href="blogdetail?page=1" class="link-page next"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                    </c:if>
                        </ul>
                        <div/>
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

</html>

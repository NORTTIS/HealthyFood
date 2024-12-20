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
        <c:if test="${sessionScope.bmiR==null}">
            <c:redirect url="bmi.jsp"/>
        </c:if>
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

        <!--Navigation section-->
        <div class="container">
            <nav class="biolife-nav">
                <ul>
                    <li class="nav-item"><a href="home" class="permal-link">Home</a></li>
                    <li class="nav-item"><span class="current-page"><a href="blog" class="permal-link">${blogTitle==null? 'OurBlog':blogTitle}</a></span></li>
                </ul>
            </nav>

        </div>

        <!-- Page Contain -->
        <div class="page-contain blog-page" style="padding-top: 0px;    ">

            <div class="container">
                <!-- Main content -->
                <div id="main-content" class="main-content">

                    <div class="row">
                     
                        <!-- Sidebar -->
                        <aside id="sidebar" class="sidebar blog-sidebar col-lg-3 col-md-4 col-sm-12 col-xs-12">
                              <!--Search Widget-->
                        <div class="widget search-widget">
                            <div class="wgt-content">
                                <form action="" name="frm-search" method="get" class="frm-search" >
                                    <input type="text" name="search" value="${searchValue}" placeholder="SEARCH..." class="input-text">
                                    <input type="text" name="cate" value="${cate}" hidden/>
                                    <input type="text" name="page" value="${currentPage}" hidden/>
                                    <button type="submit"><i class="biolife-icon icon-search"></i></button>
                                </form>
                            </div>
                        </div>
                            <div class="sidebar-contain">
                                <c:if test="${sessionScope.acc.role == 'Nutritionist'}">

                                    <div class="widget biolife-filter" style="border-bottom: 1px solid #e6e6e6; padding: 37px 0; margin-bottom: 20px;">
                                        <button class="btn btn-default"><a href="manageblog" style="color: inherit">Create Blog</a></button>
                                        <form action="blog" method="post" style="display: inline-block;">
                                            <input type="text" name="accId" value="${sessionScope.acc.account_id}" hidden/>
                                            <button class="btn btn-default" style="margin-left: 20px;" type="submit">My Blogs</button>
                                        </form>
                                    </div>
                                </c:if>
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

                        <div id="main-content" class="main-content col-lg-9 col-md-8 col-sm-12 col-xs-12">
                            <h1 style="margin: 0px 10px 10px;font-weight: 700;">${blogTitle==null? 'OurBlog':blogTitle}</h1>
                            <!--articles block-->
                            <ul class="posts-list main-post-list">
                                <!--loop post here-->
                                <c:forEach items="${bList}" var="i" varStatus="j">
                                    <li class="post-elem col-lg-12 col-md-4 col-sm-6 col-xs-12" style="    padding: 20px; border-radius: 16px; border: 2px solid #e8e8e8;">
                                        <div class="post-item effect-04 style-bottom-info">
                                            <div class="post-content col-lg-8">
                                                <div class="auth-info" style="display: flex; justify-content: space-between">
                                                    <div class="ath">
                                                        <a href="#" class="avata"><img src="assets/image/${accList.get(j.index).avatar==null?'Avatar.png': accList.get(j.index).avatar}" style="width: 35px; height: 35px; border-radius: 50%;" alt="Christian Doe">
                                                            <span style="    color: black;
                                                                  font-size: 13px; margin-left: 5px;">${accList.get(j.index).displayname}</span></a>

                                                    </div>
                                                    <div class="socials-connection">
                                                        <p class="title">${i.createAt}</p>
                                                    </div>
                                                </div>
                                                <h4 class="post-name" style="text-align: left;"><a href="blogdetail?blogId=${i.id}" class="linktopost"><p class="blog-title" >${i.title}</p></a></h4>

                                                <div class="excerpt">
                                                    ${i.content}
                                                </div>

                                                <div class="group-buttons">
                                                    <button class="btn" style="    border-radius: 25px;    min-width: 85px;margin-right: 110px;">${cateList.get(i.category)}</button>
                                                    <a href="blogdetail?blogId=${i.id}" class="btn readmore">read more</a>
                                                </div>
                                            </div>
                                            <div class="thumbnail col-lg-4">
                                                <a href="blogdetail?blogId=${i.id}" class="link-to-post">
                                                    <div>
                                                        <img src="assets/images/our-blog/${i.imagePath}" style="width: 265px; height: 200px; border-radius: 20px;" alt="">
                                                    </div>
                                                </a>
                                            </div>

                                        </div>
                                    </li>
                                </c:forEach>

                            </ul>
                        </div>
                    </div>

                    <!--phan trang-->
                    <div class="biolife-panigations-block ">
                        <ul class="panigation-contain">
                            <c:if test="${currentPage > 1}">
                                <li><a href="blog?page=1" class="link-page next"><i class="fa fa-angle-double-left" aria-hidden="true"></i></a></li>
                                <li><a href="blog?page=${currentPage-1}" class="link-page next"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
                                    </c:if>

                            <c:choose>
                                <c:when test="${currentPage > 3}">
                                    <li><span>...</span><li/>
                                </c:when>
                            </c:choose>

                            <c:forEach begin="${(currentPage - 2) > 1 ? (currentPage - 2) : 1}" 
                                       end="${(currentPage + 2) < totalPages ? currentPage + 2 : totalPages}" 
                                       var="i">

                                <li><a href="blog?page=${i}" class="link-page ${i == currentPage ? 'current-page' : ''}">${i}</a></li>
                                </c:forEach>

                            <c:choose>
                                <c:when test="${currentPage < totalPages - 2}">
                                    <li><span>...</span><li/>
                                </c:when>
                            </c:choose>

                            <c:if test="${currentPage < totalPages}">
                                <li><a href="blog?page=${currentPage+1}" class="link-page next"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                <li><a href="blog?page=${totalPages}" class="link-page next"><i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                    </c:if>
                        </ul>
                        <div/>
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

</html>

<%-- 
    Document   : blog
    Created on : Oct 6, 2024, 12:43:06 PM
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
    <div class="page-contain blog-page">
        <div class="container">
            <!-- Main content -->
            <div id="main-content" class="main-content">

                <div class="row">

                    <!--articles block-->
                    <ul class="posts-list main-post-list">
                        <!--loop post here-->
                        <li class="post-elem col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="post-item effect-04 style-bottom-info">
                                <div class="thumbnail">
                                    <a href="#" class="link-to-post"><img src="assets/images/our-blog/post-thumb-01.jpg" width="370" height="270" alt=""></a>
                                </div>
                                <div class="post-content">
                                    <h4 class="post-name"><a href="#" class="linktopost">Ashwagandha: #1 Herb Anxiety?</a></h4>
                                    <p class="post-archive"><b class="post-cat">ORGANIC</b><span class="post-date"> / 20 Nov, 2018</span><span class="author">Posted By: Braum J.Teran</span></p>
                                    <p class="excerpt">Did you know that red-staining foods are excellent lymph-movers? In fact, many plants that were historically used as dyes...</p>
                                    <div class="group-buttons">
                                        <a href="#" class="btn readmore">read more</a>
                                        <a href="#" class="btn count-number liked"><i class="biolife-icon icon-heart-1"></i><span class="number">20</span></a>
                                        <a href="#" class="btn count-number commented"><i class="biolife-icon icon-conversation"></i><span class="number">06</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="post-elem col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="post-item effect-04 style-bottom-info">
                                <div class="thumbnail">
                                    <a href="#" class="link-to-post"><img src="assets/images/our-blog/post-thumb-05.jpg" width="370" height="270" alt=""></a>
                                </div>
                                <div class="post-content">
                                    <h4 class="post-name"><a href="#" class="linktopost">Ashwagandha: #1 Herb Anxiety?</a></h4>
                                    <p class="post-archive"><b class="post-cat">ORGANIC</b><span class="post-date"> / 20 Nov, 2018</span><span class="author">Posted By: Braum J.Teran</span></p>
                                    <p class="excerpt">Did you know that red-staining foods are excellent lymph-movers? In fact, many plants that were historically used as dyes...</p>
                                    <div class="group-buttons">
                                        <a href="#" class="btn readmore">read more</a>
                                        <a href="#" class="btn count-number liked"><i class="biolife-icon icon-heart-1"></i><span class="number">20</span></a>
                                        <a href="#" class="btn count-number commented"><i class="biolife-icon icon-conversation"></i><span class="number">06</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="post-elem col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="post-item effect-04 style-bottom-info">
                                <div class="thumbnail">
                                    <a href="#" class="link-to-post"><img src="assets/images/our-blog/post-thumb-04.jpg" width="370" height="270" alt=""></a>
                                </div>
                                <div class="post-content">
                                    <h4 class="post-name"><a href="#" class="linktopost">Ashwagandha: #1 Herb Anxiety?</a></h4>
                                    <p class="post-archive"><b class="post-cat">ORGANIC</b><span class="post-date"> / 20 Nov, 2018</span><span class="author">Posted By: Braum J.Teran</span></p>
                                    <p class="excerpt">Did you know that red-staining foods are excellent lymph-movers? In fact, many plants that were historically used as dyes...</p>
                                    <div class="group-buttons">
                                        <a href="#" class="btn readmore">read more</a>
                                        <a href="#" class="btn count-number liked"><i class="biolife-icon icon-heart-1"></i><span class="number">20</span></a>
                                        <a href="#" class="btn count-number commented"><i class="biolife-icon icon-conversation"></i><span class="number">06</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                     
                    </ul>

                </div>

                <!--Panigation Block-->
                <div class="biolife-panigations-block ">
                    <ul class="panigation-contain">
                        <li><span class="current-page">1</span></li>
                        <li><a href="#" class="link-page">2</a></li>
                        <li><a href="#" class="link-page">3</a></li>
                        <li><span class="sep">....</span></li>
                        <li><a href="#" class="link-page">20</a></li>
                        <li><a href="#" class="link-page next"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                    </ul>
                </div>

            </div>
        </div>
    </div>

    <!-- FOOTER -->
    <footer id="footer" class="footer layout-03">
        <div class="footer-content background-footer-03">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-9">
                        <section class="footer-item">
                            <a href="#" class="logo footer-logo"><img src="assets/images/organic-3.png" alt="biolife logo" width="135" height="34"></a>
                            <div class="footer-phone-info">
                                <i class="biolife-icon icon-head-phone"></i>
                                <p class="r-info">
                                    <span>Got Questions ?</span>
                                    <span>(700)  9001-1909  (900) 689 -66</span>
                                </p>
                            </div>
                            <div class="newsletter-block layout-01">
                                <h4 class="title">Newsletter Signup</h4>
                                <div class="form-content">
                                    <form action="#" name="new-letter-foter">
                                        <input type="email" class="input-text email" value="" placeholder="Your email here...">
                                        <button type="submit" class="bnt-submit" name="ok">Sign up</button>
                                    </form>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 md-margin-top-5px sm-margin-top-50px xs-margin-top-40px">
                        <section class="footer-item">
                            <h3 class="section-title">Useful Links</h3>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-6">
                                    <div class="wrap-custom-menu vertical-menu-2">
                                        <ul class="menu">
                                            <li><a href="#">About Us</a></li>
                                            <li><a href="#">About Our Shop</a></li>
                                            <li><a href="#">Secure Shopping</a></li>
                                            <li><a href="#">Delivery infomation</a></li>
                                            <li><a href="#">Privacy Policy</a></li>
                                            <li><a href="#">Our Sitemap</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-6">
                                    <div class="wrap-custom-menu vertical-menu-2">
                                        <ul class="menu">
                                            <li><a href="#">Who We Are</a></li>
                                            <li><a href="#">Our Services</a></li>
                                            <li><a href="#">Projects</a></li>
                                            <li><a href="#">Contacts Us</a></li>
                                            <li><a href="#">Innovation</a></li>
                                            <li><a href="#">Testimonials</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 md-margin-top-5px sm-margin-top-50px xs-margin-top-40px">
                        <section class="footer-item">
                            <h3 class="section-title">Transport Offices</h3>
                            <div class="contact-info-block footer-layout xs-padding-top-10px">
                                <ul class="contact-lines">
                                    <li>
                                        <p class="info-item">
                                            <i class="biolife-icon icon-location"></i>
                                            <b class="desc">7563 St. Vicent Place, Glasgow, Greater Newyork NH7689, UK </b>
                                        </p>
                                    </li>
                                    <li>
                                        <p class="info-item">
                                            <i class="biolife-icon icon-phone"></i>
                                            <b class="desc">Phone: (+067) 234 789  (+068) 222 888</b>
                                        </p>
                                    </li>
                                    <li>
                                        <p class="info-item">
                                            <i class="biolife-icon icon-letter"></i>
                                            <b class="desc">Email:  contact@company.com</b>
                                        </p>
                                    </li>
                                    <li>
                                        <p class="info-item">
                                            <i class="biolife-icon icon-clock"></i>
                                            <b class="desc">Hours: 7 Days a week from 10:00 am</b>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                            <div class="biolife-social inline">
                                <ul class="socials">
                                    <li><a href="#" title="twitter" class="socail-btn"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#" title="facebook" class="socail-btn"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#" title="pinterest" class="socail-btn"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                    <li><a href="#" title="youtube" class="socail-btn"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                    <li><a href="#" title="instagram" class="socail-btn"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </section>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="separator sm-margin-top-70px xs-margin-top-40px"></div>
                    </div>
                    <div class="col-lg-6 col-sm-6 col-xs-12">
                        <div class="copy-right-text"><p><a href="templateshub.net">Templates Hub</a></p></div>
                    </div>
                    <div class="col-lg-6 col-sm-6 col-xs-12">
                        <div class="payment-methods">
                            <ul>
                                <li><a href="#" class="payment-link"><img src="assets/images/card1.jpg" width="51" height="36" alt=""></a></li>
                                <li><a href="#" class="payment-link"><img src="assets/images/card2.jpg" width="51" height="36" alt=""></a></li>
                                <li><a href="#" class="payment-link"><img src="assets/images/card3.jpg" width="51" height="36" alt=""></a></li>
                                <li><a href="#" class="payment-link"><img src="assets/images/card4.jpg" width="51" height="36" alt=""></a></li>
                                <li><a href="#" class="payment-link"><img src="assets/images/card5.jpg" width="51" height="36" alt=""></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    

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

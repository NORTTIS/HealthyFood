<%-- 
    Document   : login.jsp
    Created on : Sep 19, 2024, 7:45:38 PM
    Author     : manhg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/slick.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/main-color03-green.css">
    </head>
    <body>
        <!-- HEADER -->
     
        <jsp:include page="./jsptemplate/header.jsp" />
        <!--Hero Section-->
        <div class="hero-section hero-background">
            <h1 class="page-title">Organic Fruits</h1>
        </div>

        <!--Navigation section-->
        <div class="container">
            <nav class="biolife-nav">
                <ul>
                    <li class="nav-item"><a href="home" class="permal-link">Home</a></li>
                    <li class="nav-item"><span class="current-page">Authentication</span></li>
                </ul>
            </nav>
        </div>

        <div class="page-contain login-page">
            <!-- Main content -->
            <div id="main-content" class="main-content">
                <div class="container">
                    <div class="row">
                        <!-- Form Sign In -->
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <div class="signin-container">
                                <h1 class="text-center">Login</h1>
                                <p class="text-danger">${mess}</p>
                                <form action="login" name="frm-login" method="post">
                                    <p class="form-row">
                                        <label for="username">Username:<span class="requite">*</span></label>
                                        <input type="text" id="username" name="username" value="" class="txt-input" required>
                                    </p>
                                    <p class="form-row">
                                        <label for="password">Password:<span class="requite">*</span></label>
                                        <input type="password" id="password" name="password" value="" class="txt-input" required>
                                    </p>
                                    <p class="form-row wrap-btn">
                                        <button class="btn btn-submit btn-bold" type="submit">Sign In</button>
                                        <a href="forgotPassword.jsp" class="link-to-help">Forgot your password?</a>
                                    </p>
                                </form>
                                <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile openid&redirect_uri=http://localhost:9999/HealthyFood/login&response_type=code&client_id=579360781150-5so6djecl57vtghvliofofg0fmnida1v.apps.googleusercontent.com&approval_prompt=force" class="login-btn-google">
                                </i> <i class="  fa  fa-google" style="margin-right: 10px;"></i>
                                 Login with Google
                        </a>
                    </div>
                </div>




                <!--Go to Register form-->
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <div class="register-in-container">
                        <div class="intro">
                            <h4 class="box-title">New Customer?</h4>
                            <p class="sub-title">Create an account with us and you’ll be able to:</p>
                            <ul class="lis">
                                <li>Check out faster</li>
                                <li>Access your order history</li>
                                <li>Track new orders</li>
                                <li>Save items to your Wishlist</li>
                            </ul>
                            <a href="signup.jsp" class="btn btn-bold">Create an account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</div>
<!-- FOOTER -->
<jsp:include page="./jsptemplate/footer.jsp" />

<a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>

<script src="assets/js/jquery-3.4.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.countdown.min.js"></script>
<script src="assets/js/jquery.nice-select.min.js"></script>
<script src="assets/js/jquery.nicescroll.min.js"></script>
<script src="assets/js/slick.min.js"></script>
<script src="assets/js/biolife.framework.js"></script>
<script src="assets/js/functions.js"></script>
</body>
</html>

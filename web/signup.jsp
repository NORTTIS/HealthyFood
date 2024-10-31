<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign Up - Biolife</title>
    <link href="https://fonts.googleapis.com/css?family=Cairo:400,600,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400i,700i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/slick.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/main-color03-green.css">
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body>
    <!-- HEADER -->
    <jsp:include page="./jsptemplate/header.jsp" />

    <!-- Hero Section -->
    <div class="hero-section hero-background">
        <h1 class="page-title">Create an Account</h1>
    </div>

    <!-- Navigation Section -->
    <div class="container">
        <nav class="biolife-nav">
            <ul>
                <li class="nav-item"><a href="home" class="permal-link">Home</a></li>
                <li class="nav-item"><span class="current-page">Sign Up</span></li>
            </ul>
        </nav>
    </div>

    <!-- Sign Up Form -->
    <div class="page-contain login-page">
        <div id="main-content" class="main-content">
            <div class="container">
                <div class="row">
                    <!-- Form Sign Up -->
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="signin-container">
                            <h1 class="text-center">Sign Up</h1>
                            <form action="signup" method="POST" name="frm-signup" onsubmit="return checkCaptcha();">
                                <!-- Username input -->
                                <p class="form-row">
                                    <label for="username">User Name:<span class="requite">*</span></label>
                                    <input type="text" id="username" name="username" value="${username}" class="txt-input" required>
                                </p>
                                <p class="text-danger">${messU}</p>

                                <!-- Email input -->
                                <p class="form-row">
                                    <label for="email">Email:<span class="requite">*</span></label>
                                    <input type="email" id="email" name="email" placeholder="Enter your email..." value="${email}" class="txt-input" required>
                                </p>
                                <p class="text-danger">${messEmail}</p>

                                <!-- Password input -->
                                <p class="form-row">
                                    <label for="password">Password:<span class="requite">*</span></label>
                                    <input type="password" id="password" name="password" placeholder="Enter your password..." value="${pass}" class="txt-input" required>
                                </p>
                                <p class="text-danger">${messP}</p>

                                <!-- Confirm Password input -->
                                <p class="form-row">
                                    <label for="comfirmpassword">Confirm Password:<span class="requite">*</span></label>
                                    <input type="password" id="comfirmpassword" name="comfirmpassword" placeholder="Re-enter password..." value="${cpass}" class="txt-input" required>
                                </p>
                                <p class="text-danger">${messCp}</p>

                                <!-- reCAPTCHA -->
                                <div class="g-recaptcha" data-sitekey="6LfSA2QqAAAAAAYSTHjvBAGax8C9yYPxJ8WM7r27"></div>
                                <div style="color: red;" id="error-message"></div>

                                <!-- Submit button -->
                                <p class="form-row wrap-btn">
                                    <button type="submit" class="btn btn-submit btn-bold">Sign Up</button>
                                </p>
                                <p class="text-danger">${messCaptcha}</p>

                                <div class="text-center">
                                    Already have an account? <a href="login.jsp" class="link-to-help">Log in</a>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- Benefits of Sign Up -->
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="register-in-container">
                            <div class="intro">
                                <h4 class="box-title">Benefits of Creating an Account</h4>
                                <p class="sub-title">With an account, you can:</p>
                                <ul class="lis">
                                    <li>Check out faster</li>
                                    <li>Access your order history</li>
                                    <li>Track new orders</li>
                                    <li>Save items to your Wishlist</li>
                                </ul>
                                <a href="signup.jsp" class="btn btn-bold">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- FOOTER -->
    <jsp:include page="./jsptemplate/footer.jsp" />

    <script src="assets/js/jquery-3.4.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery.nicescroll.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/biolife.framework.js"></script>
    <script src="assets/js/functions.js"></script>
    <script type="text/javascript">
    function checkCaptcha() {
        var response = grecaptcha.getResponse();
        var errorMessage = document.getElementById('error-message');
        if (response.length === 0) {
            errorMessage.textContent = "Please verify that you are not a robot.";
            return false; // Ngăn không cho gửi form
        }
        errorMessage.textContent = ""; // Xóa thông báo lỗi nếu reCAPTCHA đã được xác minh
        return true; // Cho phép gửi form
    }
    </script>
</body>
</html>

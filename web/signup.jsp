<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign Up</title>
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./assets/css/styles.css" />
    <!-- Embed google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100&display=swap"
        rel="stylesheet"
    />
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body style="
      background-image: url('./assets/image/5040007.jpg');
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
      width: 100vw;
      margin: 0;
      ">

    <section class="w-100 p-4 d-flex justify-content-center mt-5">
        <form class="col-4 form form-log" action="signup" method="POST" onsubmit="return checkCaptcha();">
            <h1 class="text-center">Sign up</h1>

            <!-- Username input -->
            <label class="form-label" for="username">User Name</label>
            <div class="form-outline mb-4 form-group">
                <input
                    type="text"
                    id="username"
                    class="form-control"
                    name="username"
                    value="${username}"
                    required
                />
            </div>
            <p class="text-danger error"> ${messU} </p>

            <!-- Email input -->
            <label class="form-label" for="email">Enter your email</label>
            <div class="form-outline mb-4 form-group">
                <input
                    type="email"
                    id="email"
                    class="form-control"
                    name="email"
                    placeholder="Enter your email..."
                    value="${email}"
                    required
                />
                <p class="text-danger error"> ${messEmail} </p>
            </div>

            <!-- Password input -->
            <label class="form-label" for="password">Password</label>
            <div class="form-outline mb-4 form-group">
                <input
                    type="password"
                    id="password"
                    class="form-control"
                    name="password"
                    placeholder="Nhập password..."
                    value="${pass}"
                    required
                />
                <p class="text-danger error"> ${messP} </p>
            </div>

            <!-- Confirm Password input -->
            <label class="form-label" for="comfirmpassword">Confirm Password</label>
            <div class="form-outline mb-4 form-group">
                <input
                    type="password"
                    id="comfirmpassword"
                    class="form-control"
                    name="comfirmpassword"
                    placeholder="Nhập lại password..."
                    value="${cpass}"
                    required
                />
                <p class="text-danger error"> ${messCp} </p>
            </div>

            <!-- reCAPTCHA -->
            <div class="g-recaptcha" data-sitekey="6LfSA2QqAAAAAAYSTHjvBAGax8C9yYPxJ8WM7r27"></div>
            <div style="color: red;" id="error-message"></div>

            <!-- Submit button -->
            <button
                type="submit"
                class="btn btn-block mb-4 text-white"
                style="background-color: #000;"
            >
                Sign up
            </button>

            <!-- Error message for reCAPTCHA -->
            <p class="text-danger error"> ${messCaptcha} </p>

            <div>
                <!-- Links -->
                Have an account? <a href="login.jsp" style="color: #007bff">Log in.</a>
            </div>
        </form>
    </section>

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

    <!-- Optional JavaScript -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"></script>
</body>
</html>

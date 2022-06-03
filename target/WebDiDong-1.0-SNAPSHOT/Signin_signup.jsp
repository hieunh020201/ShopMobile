<%--
  Created by IntelliJ IDEA.
  User: NguyenHuuHieu
  Date: 5/24/2022
  Time: 3:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

    <link rel="stylesheet" href="assets/css/indexstyle.css">
</head>
<body>
<div class="bg-white mt-5">
    <div class="d-flex justify-content-center">
        <div class="col-6 text-center" onclick="signin()">Sign in</div>|
        <div class="col-6 text-center" onclick="signup()">Sign up</div>
    </div>
    <div class="div--form p-3" id="sign-in">
        <div class="text-dark text-center">
            <h3>Sign in</h3>
        </div>
        <div class="div--icon-dec d-flex mb-4">
            <button class="rounded-circle text-center size-circle border border-secondary m-3"><a class="" href=""><i class="fab fa-facebook-f"></i></a></button>
            <button class="rounded-circle text-center size-circle border border-secondary m-3"><a class="" href=""><i class="fab fa-google"></i></a></button>
            <button class="rounded-circle text-center size-circle border border-secondary m-3"><a class="" href=""><i class="fab fa-instagram"></i></a></button>
        </div>
        <div class="text-center text-secondary">
            <span>or use your account</span>
        </div>
        <div class="mt-1">
            <form action="#">
                <div class="form-group">
                    <input type="text" placeholder="Email" class="form-control">
                    <input type="password" placeholder="Password" class="form-control mt-3">
                    <div class="text-center mt-4 mb-4">
                        <a class="" href="#"><span class="text-center ">Forgot your password?</span></a>
                    </div>
                    <div class="text-center">
                        <input type="submit" value="Sign in" class="btn btn-primary btn-center">
                    </div>
                </div>

            </form>
        </div>
    </div>
    <div class="div--form p-3" id="sign-up" style="display: none;">
        <div class="text-dark text-center">
            <h3>Sign up</h3>
        </div>
        <div class="div--icon-dec d-flex mb-4">
            <button class="rounded-circle text-center size-circle border border-secondary m-3"><a class="" href=""><i class="fab fa-facebook-f"></i></a></button>
            <button class="rounded-circle text-center size-circle border border-secondary m-3"><a class="" href=""><i class="fab fa-google"></i></a></button>
            <button class="rounded-circle text-center size-circle border border-secondary m-3"><a class="" href=""><i class="fab fa-instagram"></i></a></button>
        </div>
        <div class="text-center text-secondary">
            <span>or use your email for registration</span>
        </div>
        <div class="mt-1">
            <form action="#">
                <div class="form-group">
                    <input type="text" placeholder="Name" class="form-control">
                    <input type="email" placeholder="Email" class="form-control mt-3">
                    <input type="password" placeholder="Password" class="form-control mt-3 mb-3">
                    <div class="text-center">
                        <input type="submit" value="Sign up" class="btn btn-primary btn-center">
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>

<Script>
    function signin() {
        document.getElementById("sign-in").style.display = "block"
        document.getElementById("sign-up").style.display = "none"
    }

    function signup() {
        document.getElementById("sign-in").style.display = "none"
        document.getElementById("sign-up").style.display = "block"
    }
</Script>

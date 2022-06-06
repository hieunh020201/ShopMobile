<%--
  Created by IntelliJ IDEA.
  User: NguyenHuuHieu
  Date: 5/21/2022
  Time: 9:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
    <link rel="stylesheet" href="assets/css/styleHeaderUser.css">
</head>
<body>
<div class="row " style="background-color: aqua">
    <div class="col-xl-3">
        <a>
            <img alt="Logo" src="assets/images/logo.jpg" style = "width:80px;">
        </a>
    </div>
    <div class="col-xl-6">
        <form class="form-inline pt-2">
            <input class="form-control pos-input" type="text" placeholder="Search">
            <button class="btn btn-success" type="submit"><i class="fas fa-search"></i></button>
        </form>
    </div>
    <div class="pt-2">
        <a href="/Signin_signup.jsp">
            <span>Đăng nhập</span>
        </a>
    </div>
</div>
</body>
</html>

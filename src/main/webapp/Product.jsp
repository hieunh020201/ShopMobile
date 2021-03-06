<%--
  Created by IntelliJ IDEA.
  User: NguyenHuuHieu
  Date: 6/4/2022
  Time: 12:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

    <link rel="stylesheet" href="assets/css/productstyle.css">

    <script src="assets/js/main.js"></script>

    <title>sản phẩm</title>
</head>
<body>
<div>
    <c:import url="/Header.jsp"/>
</div>
<div>
    Điện thoại
    <!-- Content -->
    <div class="d-flex">
        <!-- Filter -->

        <div class="bg-success col-2">
            <!-- category filter -->
            <div class="">
                <!-- <p onclick="down('display-category')">Thương hiệu</p> -->
                <a href="#collapse-1" data-toggle="collapse">Thương hiệu</a>
                <ul class="nav flex-column collapse show" id="collapse-1">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sam Sung</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Iphone</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">OPPO</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">XIAOMI</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">VIVO</a>
                    </li>
                </ul>
            </div>
            <!-- price filter -->
            <div>
                <!-- <p onclick="down('display-price')">Giá bán</p> -->
                <a href="#collapse-2" data-toggle="collapse">Giá bán</a>
                <ul class="nav flex-column collapse show" id="collapse-2">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                </ul>
            </div>
            <!-- RAM filter -->
            <div>
                <!-- <p onclick="down('display-RAM')">RAM</p> -->
                <a href="#collapse-3" data-toggle="collapse">RAM</a>
                <ul class="nav flex-column collapse show" id="collapse-3">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                </ul>
            </div>
            <!-- ROM filter -->
            <div>
                <!-- <p onclick="down('display-ROM')">ROM</p> -->
                <a href="#collapse-4" data-toggle="collapse">ROM</a>
                <ul class="nav flex-column collapse show" id="collapse-4">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- List product -->
        <div class="d-flex col-10 flex-wrap justify-content-start align-content-around ml-1">
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card m-1">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>

        </div>
    </div>
</div>
<div>
    <c:import url="/Footer.jsp"/>
</div>
</body>
</html>



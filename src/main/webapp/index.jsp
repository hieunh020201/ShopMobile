<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

    <link rel="stylesheet" href="assets/css/indexstyle.css">

    <title>Home</title>
</head>

<body class="container">
<div class="mt-5" style="background-color: rgb(103, 204, 247); height: 2000px;">
    <div class="d-flex">
        <!-- category -->
        <div class="col-3">
            <h3><i class="fas fa-bars"></i> DANH MỤC </h3>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link text-dark" href="#">SAM SUNG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark" href="#">IPHONE</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark" href="#">OPPO</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark" href="#">XIAOMI</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark" href="#">VIVO</a>
                </li>
            </ul>
        </div>
        <!-- Carousel -->
        <div id="demo" class="carousel slide col-9" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active text-center">
                    <img src="assets/images/chicago.jpg" alt="Los Angeles" width="800" height="300">
                </div>
                <div class="carousel-item text-center">
                    <img src="assets/images/chicago.jpg" alt="Chicago" width="800" height="300">
                </div>
                <div class="carousel-item text-center">
                    <img src="assets/images/chicago.jpg" alt="New York" width="800" height="300">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>

    <!-- Sale Product -->
    <div class="mt-5" style="background-image: url(assets/images/chicago.jpg);">
        <h2 class="text-center text-danger">SALE LỚN HẤP DẪN</h2>
        <div class="d-flex justify-content-around m-2">
            <div class="card">
                <i class="far fa-heart position-absolute" onclick="addWishList()"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>
            </div>
            <div class="card">
                <i class="far fa-heart position-absolute"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>

            </div>
            <div class="card">
                <i class="far fa-heart position-absolute"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>

            </div>
            <div class="card">
                <i class="far fa-heart position-absolute"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>

            </div>
            <div class="card">
                <i class="far fa-heart position-absolute"></i>
                <img class="card-img-top" src="assets/images/iPhone_12_64GB_Blue.jpg" alt="Card image">
                <h5>Iphone 12 64GB blue</h5>
                <p><span class="text-warning">8.000.000đ</span><span class="price-pro">7.000.000đ</span></p>

            </div>

        </div>
    </div>

    <!-- Best Product -->
    <div class="mt-5">
        <!-- content -->
        <div class="d-flex">
            <div>
                <span class="font-weight-bold p-2 bg-warning text-white">Điện thoại mua nhiều nhất</span>
            </div>
            <div class="ml-auto mr-5">
                <a class="mr-2 link_color decoration-line" href="#">Sam sung</a>
                <a class="mr-2 link_color decoration-line" href="#">iphone</a>
                <a class="mr-2 link_color decoration-line" href="#">OPPO</a>
                <a class="mr-2 link_color decoration-line" href="#">Xiaomi</a>
                <a class="mr-2 link_color decoration-line" href="#">ViVo</a>
                <a class="mr-2 link_color decoration-line" href="#">Xem tất cả</a>
            </div>
        </div>

        <!-- list best product -->
        <div class="d-flex flex-wrap justify-content-start mt-3 align-content-around ml-1">
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
</body>

</html>
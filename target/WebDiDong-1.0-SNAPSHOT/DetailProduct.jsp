<%--
  Created by IntelliJ IDEA.
  User: NguyenHuuHieu
  Date: 6/6/2022
  Time: 1:46 PM
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

    <!-- style -->
    <link rel="stylesheet" href="assets/css/indexStyle.css">

    <script src="assets/js/main.js"></script>

    <title>Detail</title>
</head>
<body>
<div>
    <c:import url="/Header.jsp"/>
</div>
<div class="d-flex">
    <!-- Image product -->
    <div class="col-7">
        <!-- Big Image -->
        <div class="navbar navbar-expand-sm">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <img class="d-block" src="assets/images/dien_thoai_iphone_11_64gb_tim_1.jpg" alt="img1" width="500px">
                </li>
                <li class="nav-item ">
                    <img class="d-none" src="assets/images/dien_thoai_iphone_11_64gb_tim_2.jpg" alt="img1" width="500px">
                </li>
                <li class="nav-item">
                    <img class="d-none" src="assets/images/dien_thoai_iphone_11_64gb_tim_3.jpg" alt="img1" width="500px">
                </li>
                <li class="nav-item">
                    <img class="d-none" src="assets/images/dien_thoai_iphone_11_64gb_tim_4.jpg" alt="img1" width="500px">
                </li>
            </ul>
        </div>
        <!-- Image Selection -->
        <div class="navbar navbar-expand-sm">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <img src="assets/images/dien_thoai_iphone_11_64gb_tim_1.jpg" alt="img1" width="70px">
                </li>
                <li class="nav-item">
                    <img src="assets/images/dien_thoai_iphone_11_64gb_tim_2.jpg" alt="img2" width="70px">
                </li>
                <li class="nav-item">
                    <img src="assets/images/dien_thoai_iphone_11_64gb_tim_3.jpg" alt="img3" width="70px">
                </li>
                <li class="nav-item">
                    <img src="assets/images/dien_thoai_iphone_11_64gb_tim_4.jpg" alt="img4" width="70px">
                </li>
            </ul>
        </div>
        <!-- Information detail -->
        <div>
            <strong>Đặc điểm nổi bật</strong>
            <ul class="p-2 m-2">
                <li>Màn hình 6.51 inch HD+ cho trải nghiệm hình ảnh rộng rãi thoải mái</li>
                <li>Bộ vi xử lý MediaTek Helio P35 giúp xử lý tác vụ cơ bản nhanh chóng</li>
                <li>Dung lượng pin 5000mAh cho bạn thoải mái trải nghiệm cả ngày dài</li>
                <li>Camera sau 13MP+2MP chụp ảnh rõ nét, lưu giữ khoảnh khắc đáng nhớ</li>
                <li>Camera trước có độ phân giải 8MP chụp selfie rõ nét, đẹp tự nhiên</li>
            </ul>
        </div>
    </div>

    <!-- Information product -->
    <div class="col-5">
        <!-- Product name -->
        <div>
            <h3>Điện thoại Samsung Galaxy A03</h3>
        </div>
        <hr>
        <div>
            <!-- Price -->
            <div class="m-1">
                <h3 class="">2.600.000đ</h3>
            </div>
            <!-- price promotion -->
            <div>
                <span class="text-white bg-danger rounded pr-1 pl-1">-11%</span>
                <span class="ml-2" style="text-decoration: line-through;">2.990.00đ</span>
            </div>
            <!-- installment -->
            <div class="mt-1 mb-1">
                <span class="border rounded border-danger">Trả góp 0%</span>
            </div>
        </div>
        <div class="mt-3 d-flex">
            <Button class="btn bg-danger rounded text-white border border-white p-1 col-6">
                <span>MUA NGAY</span>
                <span class="sub-text d-block">Giao hàng tận nơi</span>
            </Button>
            <Button class="btn btn-outline-danger col-6 ml-2">
                THÊM VÀO GIỎ HÀNG
            </Button>
        </div>
    </div>
</div>
<div>
    <c:import url="/Footer.jsp"/>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: NguyenHuuHieu
  Date: 6/6/2022
  Time: 8:57 PM
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
    <title>User</title>
</head>
<body>
<div>
    <c:import url="/Header.jsp"/>
</div>
<div class="d-flex">
    <div class="col-2 p-0">
        <c:import url="/SideBar.jsp"/>
    </div>
    <div class="col-10 ml-3">
        <form>
            <div>
                <h3>Thông tin cá nhân</h3>
            </div>
            <div class="col-2">
                <span>Giới tính</span>
            </div>
            <div class="col-2 d-flex mt-2">
                <div class="custom-control custom-radio custom-control-inline border border-dark rounded pr-1">
                    <input type="radio" name="1" id="male" class="custom-control-input">
                    <label for="male" class="custom-control-label">Nam</label>
                </div>
                <div class="custom-control custom-radio custom-control-inline border border-dark rounded pr-1">
                    <input type="radio" name="1" id="female" class="custom-control-input">
                    <label for="female" class="custom-control-label">Nữ</label>
                </div>
            </div>
            <div class="pt-3 col-4">
                <div class="form-group">
                    <label for="name">Họ và tên</label>
                    <input type="text" class="form-control" id="name">
                </div>
            </div>
            <div class="pt-3 col-4 d-flex">
                <div class="form-group mr-2">
                    <label for="phone">Số điện thoại</label>
                    <input type="tel" maxlength="10" class="form-control" id="phone">
                </div>
                <div class="form-group ml-2">
                    <label for="email">Email</label>
                    <input type="email" maxlength="30" class="form-control" id="email">
                </div>
            </div>
            <div class="pt-3 col-4">
                <div class="form-group ml-2">
                    <label for="birth">Ngày sinh</label>
                    <input type="date" maxlength="30" class="form-control" id="birth">
                </div>
            </div>
            <div class="pt-3 col-4">
                <div class="form-group ml-2">
                    <label for="address">Địa chỉ</label>
                    <textarea class="form-control" rows="5" id="address"></textarea>
                </div>
            </div>
            <div>
                <a href="">Cập nhật thông tin</a>
            </div>
        </form>
    </div>

</div>
<div>
    <c:import url="/Footer.jsp"/>
</div>
</body>
</html>

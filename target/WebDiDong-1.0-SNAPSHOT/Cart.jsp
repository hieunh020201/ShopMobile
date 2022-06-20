<%--
  Created by IntelliJ IDEA.
  User: NguyenHuuHieu
  Date: 6/6/2022
  Time: 3:31 PM
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
    <title>Cart</title>
</head>

<body>
<div>
    <c:import url="/Header.jsp"/>
</div>
<div class="d-flex mt-4">
    <!-- Cart -->
    <div class="col-7">
        <table class="table table-striped table-hover table-bordered">
            <tr>
                <th class="text-center col-1">No.</th>
                <th class="text-center col-1">Image</th>
                <th class="text-center col-5">Name</th>
                <th class="text-center col-1">Price</th>
                <th class="text-center col-1">Quantity</th>
                <th class="text-center col-2">Total</th>
            </tr>
            <tr>
                <td class="text-center">1</td>
                <td class="text-center">
                    <img src="assets/images/iPhone_12_64GB_Blue.jpg" alt="" width="30px">
                </td>
                <td class="text-center">
                        <span>
                            name
                        </span>
                </td>
                <td class="text-center">
                        <span>
                            1.000.000đ
                        </span>
                </td>
                <td class="text-center">
                    <input type="number" name="" id="" value="0" min="0" class="td-quantity text-dark" style="width: 50px;">
                </td>
                <td class="text-center">
                    2.000.000đ
                </td>
                <td class="text-center">
                    <i class="far fa-edit text-warning"></i>
                </td>
                <td class="text-center">
                    <i class="far fa-trash-alt text-danger"></i>
                </td>
            </tr>
            <tr>
                <td class="text-center">2</td>
                <td class="text-center">
                    <img src="assets/images/iPhone_12_64GB_Blue.jpg" alt="" width="40px">
                </td>
                <td class="text-center">
                        <span>
                            name
                        </span>
                </td>
                <td class="text-center">
                        <span>
                            1.000.000đ
                        </span>
                </td>
                <td class="text-center">
                    <input type="number" name="" id="quantity" value="0" min="0" class="td-quantity" style="width: 50px;">
                </td>
                <td class="text-center">
                    2.000.000đ
                </td>
                <td class="text-center">
                    <i class="far fa-edit text-warning"></i>
                </td>
                <td class="text-center">
                    <i class="far fa-trash-alt text-danger"></i>
                </td>
            </tr>
            <tr></tr>
        </table>
    </div>
    <!-- Information Customer -->
    <div class="ml-2 col-4">
        <form action="">
            <h2>Total:</h2> <span>2.000.000đ</span>
            <h3>Quantity:</h3> <span>4 sản phẩm</span>
            <p>Promotion:</p> <span>300.000đ</span>
            <!-- Payments -->
            <div class="d-flex">
                <div class="custom-control custom-radio custom-control-inline border border-danger col-6 rounded">
                    <input type="radio" name="1" id="custom-pay-after" class="custom-control-input">
                    <label for="custom-pay-after" class="custom-control-label">Thanh toán khi nhận hàng</label>
                </div>
                <div class="custom-control custom-radio custom-control-inline border border-danger col-6 rounded">
                    <input type="radio" name="1" id="custom-pay-before" class="custom-control-input">
                    <label for="custom-pay-before" class="custom-control-label">Thanh toán thẻ</label>
                </div>
            </div>
            <!-- List card -->
            <div></div>

            <!-- Information -->
            <div class="mt-3">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Name</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Name">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Phone</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Phone">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Address</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Address">
                </div>
            </div>
            <div class="float-right">
                <input class="btn btn-danger" type="submit" value="Thanh toán">
            </div>

        </form>
    </div>
</div>
<div>
    <c:import url="/Footer.jsp"/>
</div>
</body>

</html>

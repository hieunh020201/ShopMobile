<%--
  Created by IntelliJ IDEA.
  User: NguyenHuuHieu
  Date: 6/8/2022
  Time: 9:00 PM
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
    <link rel="stylesheet" href="../assets/css/indexStyle.css">

<%--    <script src="../assets/js/main.js"></script>--%>
    <title>Category Management</title>
</head>
<body>
<div class="d-flex">
    <div class="col-2 div--sidebar bg-dark d-flex justify-content-center" style="height: 100vh">
        <div class="position-fixed">
            <c:import url="/admin/SideBarAdmin.jsp"/>
        </div>
    </div>
    <div class="col-10">
        <div class="d-flex">
            <div class="col-7">
                <table class="table table-striped table-hover table-bordered">
                    <tr>
                        <th class="text-center col-1">No.</th>
                        <th class="text-center col-1">Id</th>
                        <th class="text-center col-5">Name</th>
                    </tr>
<c:forEach items="${category}" var="cate" varStatus="item">
                    <tr onclick="setCategory('${cate.getId()}', '${cate.getName()}')">
                        <td class="text-center">${item.index + 1}</td>
                        <td class="text-center">
                            <span>
                                ${cate.getId()}
                            </span>
                        </td>
                        <td class="text-center">
                            <span>
                                ${cate.getName()}
                            </span>
                        </td>
                        <td class="text-center">
                            <i class="far fa-trash-alt text-danger" onclick="messDelCategory('${cate.getId()}')"></i>
                        </td>
                    </tr>
</c:forEach>
                </table>
            </div>
            <div class="col-5">
                <div>
                    <h1>Category</h1>
                    <form action="ControlCategory" method="post">
                    <div class="form-group ml-1">
                        <label for="id">id: </label>
                        <input type="text" class="form-control" maxlength="6" id="id" name="id">
                    </div>
                    <div class="form-group ml-1">
                        <label for="name">Name: </label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div>
                        <input type="submit" class="btn btn-success btn-fill" name="action" value="CREATE">
                        <input type="submit" class="btn btn-warning btn-fill" name="action" value="UPDATE">
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

<script>
    function messDelCategory(cid){
        var option = confirm('Are you sure to delete');
        if(option === true){
            window.location.href='deleteCategory?id='+cid;
        }
    }
</script>
<script>
    function setCategory(id, name) {
        document.getElementById("id").value = id;
        document.getElementById("name").value = name;
    }
</script>
<%--
  Created by IntelliJ IDEA.
  User: NguyenHuuHieu
  Date: 6/7/2022
  Time: 8:53 PM
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

    <script src="../assets/js/main.js"></script>
    <title>Product Management</title>
</head>
<body>
<div class="d-flex">
    <div class="col-2">
        <div class="position-fixed bg-dark">
            <c:import url="/admin/SideBarAdmin.jsp"/>
        </div>
    </div>
    <div class="col-10">
        <div class="d-flex">
            <!-- Table product -->
            <div class="col-6 p-0">
                <table class="table table-striped table-hover table-bordered">
                    <tr>
                        <th class="text-center col-1">No.</th>
                        <th class="text-center col-5">Name</th>
                        <th class="text-center col-1">Price</th>
                        <th class="text-center col-1">Quantity</th>
                        <th class="text-center col-1">Promotion</th>
                    </tr>
<c:forEach items="${products}" var="pro" varStatus="item">
                    <tr onclick="setProduct('${pro.getId()}', '${pro.getName()}')">
                        <td class="text-center">${item.index + 1}</td>
                        <td class="text-center">
                            <span>
                                    ${pro.getName()}
                            </span>
                        </td>
                        <td class="text-center">
                            <span>
                                    ${pro.getPrice()}
                            </span>
                        </td>
                        <td class="text-center">
                            <span>
                                    ${pro.getQuantity()}
                            </span>
                        </td>
                        <td class="text-center col-1">
                            <c:if test = "${pro.getPromotion() != null}">
                                ${pro.getPromotion().getId()}
                            </c:if>

                        </td>
                        <td class="text-center col-1">
                            <i class="far fa-trash-alt text-danger" onclick="messDelProduct('${pro.getId()}')"></i>
                        </td>
                    </tr>
</c:forEach>
                </table>
            </div>

            <!-- Detail product -->
            <div class="col-6">
                <div class="text-center">
                    <h1>DETAIL</h1>
                </div>
                <form action="ControlProduct" method="post">
                    <div class="d-flex">
                        <div class="col-7">
                            <div class="form-group p-0">
                                <label for="id">Mã: </label>
                                <input type="text" class="form-control" value="" id="id" name="id" disabled>
                            </div>
                            <div class="form-group">
                                <label for="name">Tên sản phẩm: </label>
                                <input type="text" class="form-control" maxlength="30" value="" id="name" name="name">
                            </div>
                            <div class="d-flex">
                                <div class="form-group">
                                    <label for="price">Giá: </label>
                                    <input type="number" class="form-control input-price" min="0" value="" id="price" name="price">
                                </div>
                                <div class="form-group ml-1">
                                    <label for="quantity">Số lượng: </label>
                                    <input type="number" class="form-control" min="0" value="" id="quantity" name="quantity">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description">Mô tả: </label>
                                <textarea class="form-control" rows="5" id="description" name="description"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="promotion">Khuyến mãi: </label>
                                <input type="text" class="form-control" value="" id="promotion" name="promotion">
                            </div>
                            <div>
                                <input type="submit" class="btn btn-success btn-fill" name="action" value="CREATE">
                                <input type="submit" class="btn btn-warning btn-fill" name="action" value="UPDATE">
                            </div>
                        </div>
                        <div class="col-5 p-0">
                            <div class="form-group ml-2">
                                <label for="category">Danh mục: </label>
                                <select name="category" class="form-control" id="category">
                                    <c:forEach items="${categories}" var="cate">
                                        <option value="${cate.getId()}">${cate.getName()}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="card">
                                <label for="myimg">Hình ảnh: </label>
                                <input type="hidden" name="" id="namebox" width="180px">

                                <label id="extlab" style="display: none"></label><br>
                                <img id="myimg" class="card-img-top" width="240px" height="240px">
                                <div style="margin-top: 10px">
                                    <button id="selbtn" class="btn btn-info btn-fill">Choose</button>
                                    <button id="upbtn" class="btn btn-info btn-fill">Save</button> <label id="upprogress"></label>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>

<script>
    function setProduct(id, name, price, quantity, description, promotion, image) {
        document.getElementById("id").value = id;
        document.getElementById("name").value = name;
        document.getElementById("price").value = price;
        document.getElementById("quantity").value = quantity;
        document.getElementById("description").value = description;
        document.getElementById("promotion").value = promotion;
        document.getElementById("image").value = image;
    }
</script>

<script>
    function messDelProduct(pid) {
        var option = confirm('Are you sure to delete');
        if (option === true) {
            window.location.href = 'deleteProduct?id=' + pid;
        }
    }
</script>

<script type="module">
    // Import the functions you need from the SDKs you need
    import { initializeApp } from "https://www.gstatic.com/firebasejs/9.8.3/firebase-app.js";
    import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.8.3/firebase-analytics.js";
    // TODO: Add SDKs for Firebase products that you want to use
    // https://firebase.google.com/docs/web/setup#available-libraries

    // Your web app's Firebase configuration
    // For Firebase JS SDK v7.20.0 and later, measurementId is optional
    const firebaseConfig = {
        apiKey: "AIzaSyDVQDCcC6aaE6FdWsm0wo4hNneObd77Qlo",
        authDomain: "web-mobile-image.firebaseapp.com",
        databaseURL: "https://web-mobile-image-default-rtdb.firebaseio.com",
        projectId: "web-mobile-image",
        storageBucket: "web-mobile-image.appspot.com",
        messagingSenderId: "245677175023",
        appId: "1:245677175023:web:027493dc762780cb786b1a",
        measurementId: "G-JTJ7ZF47TV"
    };

    // Initialize Firebase
    const app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);

    import {getStorage, ref as sRef, uploadBytesResumable, getDownloadURL }
        from "https://www.gstatic.com/firebasejs/9.8.3/firebase-storage.js";

    //Firebase Realtime Database
    import { getDatabase, ref, set, child, get, update, remove }
        from "https://www.gstatic.com/firebasejs/9.8.3/firebase-database.js";

    //Gọi database
    const realdb = getDatabase();


    // ------------------VARIABLES $ REFERENCES---------------------------
    var files = [];
    var reader = new FileReader();

    var namebox = document.getElementById('namebox');
    var extlab = document.getElementById('extlab');
    var myimg = document.getElementById('myimg');
    var proglab = document.getElementById('upprogress');
    var SelBtn = document.getElementById('selbtn');
    var UpBtn = document.getElementById('upbtn');
    var DownBtn = document.getElementById('downbtn');
    var imagetext = document.getElementById('images');

    //Tạo element input type file
    var input = document.createElement('input');
    input.type = 'file';

    //When input makes changes
    input.onchange = e =>{
        //Khai báo biến file được upload thành công
        files = e.target.files;

        var extention = GetFileExt(files[0]);
        var name = GetFileName(files[0]);

        namebox.value = name;
        extlab.innerHTML = extention;

        reader.readAsDataURL(files[0]);

    }

    reader.onload = function(){
        myimg.src = reader.result;
    }

    // -----------SELECTION-----------------------------------------

    SelBtn.onclick = function(){
        input.click();
    }

    //Lấy đuôi của file
    function GetFileExt(file) {
        var temp = file.name.split('.');
        //Nối chuỗi từ mảng
        var ext = temp.slice((temp.length-1),(temp.length));
        return '.' + ext[0];
    }


    //Lấy tên của file
    function GetFileName(file) {
        var temp = file.name.split('.');
        //Nối chuỗi từ mảng bỏ chuỗi cuối cùng
        //Nối các chuỗi với nhau bằng dấu .
        var fname = temp.slice(0,-1).join('.');
        return fname;
    }

    // -----------------UPLOAD PROCESS----------------------
    async function UploadProcess() {
        var ImgToUpload = files[0];

        var ImgName = namebox.value + extlab.innerHTML;

        //MD5


        if(!ValidateName()){
            alert('name cannot contain ".", "#", "$", "[", or "]"');
            return;
        }

        const metaData = {
            contentType: ImgToUpload.type
        }

        const storage = getStorage();

        const strorageRef = sRef(storage, "Images/"+ImgName);

        const UploadTask = uploadBytesResumable(strorageRef, ImgToUpload, metaData);

        UploadTask.on('state-changed', (snapshot)=>{
                var progess = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
                proglab.innerHTML = "Upload" + progess + "%";
            },

            (error) =>{
                alert("error: image not uploaded!");
            },

            ()=>{
                getDownloadURL(UploadTask.snapshot.ref).then((downloadURL)=>{
                    SaveURLtoRealtimeDB(downloadURL);
                    GetUrlfromRealtimeDB();
                });
            }
        );
    }

    // ----------Functions for REALTIME DATABASE ----------

    function SaveURLtoRealtimeDB(URL) {
        var name = namebox.value;
        var ext = extlab.innerHTML;

        set(ref(realdb,"ImageLinks/"+name),{
            ImageName: (name+ext),
            ImgUrl: URL
        });
    }

    function GetUrlfromRealtimeDB() {
        var name = namebox.value;

        var dbRef = ref(realdb);

        get(child(dbRef, "ImageLinks/"+name)).then((snapshot)=>{
            if(snapshot.exists()){
                myimg.src = snapshot.val().ImgUrl;
                imagetext.value = snapshot.val().ImgUrl;
            }
        })
    }

    function ValidateName(){
        var regex = /[\.#$\[\]]/
        return !(regex.test(namebox.value));
    }

    UpBtn.onclick = UploadProcess;
    DownBtn.onclick = GetUrlfromRealtimeDB;
</script>
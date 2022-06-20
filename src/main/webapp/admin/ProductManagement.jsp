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
    <link rel="stylesheet" href="../assets/css/adminStyle.css">

    <script src="../assets/js/main.js"></script>
    <title>Product Management</title>
</head>
<body>
<div class="d-flex">
    <div class="col-2 p-0">
        <div class="position-fixed col-2 p-0">
            <c:import url="/admin/SideBarAdmin.jsp"/>
        </div>
    </div>
    <div class="col-10 p-0">
<%--        header --%>
        <div style="height: 50px; background-color: bisque">

        </div>
<%--    content --%>
        <div class="d-flex">
            <!-- Table product -->
            <div class="col-6 pr-0">
                <table class="table table-striped table-hover table-bordered">
                    <tr>
                        <th class="text-center col-1">No.</th>
                        <th class="text-center col-5">Name</th>
                        <th class="text-center col-1">Price</th>
                        <th class="text-center col-1">Quantity</th>
                        <th class="text-center col-1">Promotion</th>
                    </tr>
<c:forEach items="${products}" var="pro" varStatus="item">
<%--    function setProduct(id, name, price, quantity, description, promotion, image)--%>
                    <tr onclick="setProduct('${pro.getId()}', '${pro.getName()}', '${pro.getPrice()}', '${pro.getQuantity()}', '${pro.getDescription()}',
                            '${pro.getPromotion()}', '${pro.getImage()}')">
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

                    <div class="d-flex">
                        <div class="col-7">
                            <form action="ControlProduct" method="post">
                                <div class="input-group p-0 mb-2">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">ID</span>
                                    </div>
                                    <input type="text" class="form-control" id="id" name="id" disabled>
                                </div>
                            <div class="form-group">
                                <label for="category">Danh mục: </label>
                                <select name="category" class="form-control" id="category">
                                    <c:forEach items="${categories}" var="cate">
                                        <option value="${cate.getId()}">${cate.getName()}</option>
                                    </c:forEach>
                                </select>
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
                                <textarea class="form-control" rows="4" id="description" name="description"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="promotion">Khuyến mãi: </label>
                                <input type="text" class="form-control" value="" id="promotion" name="promotion">
                            </div>
                            <div>
                                <input type="hidden" class="form-control" value="" id="image" name="image">
                                <input type="submit" class="btn btn-success btn-fill" name="action" value="CREATE">
                                <input type="submit" class="btn btn-warning btn-fill" name="action" value="UPDATE">
                                <input type="text" name="data" id="image_main">
                                <input type="text" name="data" id="image_1">
                                <input type="text" name="data" id="image_2">
                                <input type="text" name="data" id="image_3">
                            </div>
                            </form>
                        </div>
                        <div class="div-img col-5 p-0">

                            <div class=" mt-5">
                                <label for="imageShow">Hình ảnh: </label>
                                <input type="hidden" name="" id="namebox" width="180px">

                                <label id="extlab" style="display: none"></label><br>
                                <div class="div-effect-main">
                                    <img class="img-product-main w-100" src="../assets/images/image.jpg" id="imageShow" width="240px" height="240px">
                                    <span class="plus-main" id="plus-main">+</span>
                                </div>
                                <div class="mt-1 d-flex justify-content-between">
                                    <div class="mr-1">
                                        <div class="div-effect-1">
                                            <img class="w-100 img-product-1" src="../assets/images/image.jpg" id="img1" width="70px" height="70px">
                                            <span class="plus-1" id="plus-1">+</span>
                                        </div>
                                    </div>
                                    <div class="mr-1 ml-1">
                                        <div class="div-effect-1">
                                            <img class="w-100 img-product-1" src="../assets/images/image.jpg" id="img2" width="70px" height="70px">
                                            <span class="plus-2" id="plus-2">+</span>
                                        </div>
                                    </div>
                                    <div class="ml-1">
                                        <div class="div-effect-1">
                                            <img class="w-100 img-product-1" src="../assets/images/image.jpg" id="img3" width="70px" height="70px">
                                            <span class="plus-3" id="plus-3">+</span>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-top: 10px">
                                    <button id="selbtn" class="btn btn-info btn-fill">Choose</button>
                                    <button id="upbtn" class="btn btn-info btn-fill">Save</button> <label id="upprogress"></label>
                                </div>
                            </div>
                        </div>
                    </div>

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
    import { getDatabase, ref, set, child, push, get, update, remove }
        from "https://www.gstatic.com/firebasejs/9.8.3/firebase-database.js";

    //Gọi database
    const realdb = getDatabase();


    // ------------------VARIABLES $ REFERENCES---------------------------
    var files = [];
    var reader = new FileReader();

    var namebox = document.getElementById('namebox');
    var extlab = document.getElementById('extlab');
    var image = document.getElementById('imageShow');
    var image1 = document.getElementById('img1');
    var image2 = document.getElementById('img2');
    var image3 = document.getElementById('img3');
    var proglab = document.getElementById('upprogress');
    // var SelBtn = document.getElementById('selbtn');
    var UpBtn = document.getElementById('upbtn');
    // var imagetext = document.getElementById('images');

    var plus = document.getElementById('plus-main');
    var plus1 = document.getElementById('plus-1');
    var plus2 = document.getElementById('plus-2');
    var plus3 = document.getElementById('plus-3');

    //Tạo element input type file----------------------
    var input = document.createElement('input');
    input.type = 'file';

    //When input makes changes
    input.onchange = e =>{
        //Khai báo biến file được upload thành công
        files = e.target.files;
        console.log("files[0] = " + files);


        var extention = GetFileExt(files[0]);
        var name = GetFileName(files[0]);

        namebox.value = name;
        extlab.innerHTML = extention;

        reader.readAsDataURL(files[0]);

        reader.onload = function(){
            image.src = reader.result;
        }

        UploadProcess('image_main');
    }

    //Main Image click
    plus.onclick = function(){
        input.click();
    }
    //---------------------------------

    var input1 = document.createElement('input');
    input1.type = 'file';

    //When input makes changes
    input1.onchange = e =>{
        //Khai báo biến file được upload thành công
        files = e.target.files;
        console.log("files[1] = " + files);


        var extention = GetFileExt(files[0]);
        var name = GetFileName(files[0]);

        namebox.value = name;
        extlab.innerHTML = extention;

        reader.readAsDataURL(files[0]);

        reader.onload = function(){
            image1.src = reader.result;
        }

        UploadProcess('image_1');
    }

    //Image No.1 click
    plus1.onclick = function(){
        input1.click();
    }

    //------------------------------------------------




    // -----------SELECTION-----------------------------------------





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
    async function UploadProcess(id) {
        var ImgToUpload = files[0];

        var ImgName = namebox.value + extlab.innerHTML;

        console.log("get id 1: ", id);

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
                    console.log("get id 2: ", id);
                    SaveURLtoRealtimeDB(downloadURL, id);
                    // GetUrlfromRealtimeDB();
                });
            }
        );

    }

    // ----------Functions for REALTIME DATABASE ----------



    function SaveURLtoRealtimeDB(URL, id) {
        //Chỉ để kiểm tra
        let getKey;

        var name = namebox.value;
        var ext = extlab.innerHTML;

        push(ref(realdb,"ImageLinks/id"),{
            // ImageName: (name+ext),
            ImgUrl: URL
        }).then((snap) => {
            getKey = snap.key
            console.log("get key: ", getKey);
            console.log("get id 3: ", id);
            document.getElementById(id).value = getKey;

            // imagetext.value = getKey;
            GetUrlfromRealtimeDB(getKey);
        });

    }

    function GetUrlfromRealtimeDB(getKey) {
        var name = namebox.value;
        console.log("name: ", name);

        var dbRef = ref(realdb);
        console.log(" real: ", dbRef);

        console.log("get key 2 ", getKey);


        get(child(dbRef, "ImageLinks/id" + getKey)).then((snapshot)=>{
            console.log("ben ngoai");
            console.log(" hello + " + getKey)
            // snapshot.forEach((childSnapshot) => {
            //     console.log(childSnapshot.key);
            //     console.log(childSnapshot.val())
            //
            // })
            console.log(snapshot.val())
            if(snapshot.exists()){
                image.src = snapshot.val().ImgUrl;
                // imagetext.value = snapshot.val().ImgUrl;
                // console.log("xin chao: ", snapshot.val());
            }

            // console.log(snapshot.val().ImgUrl);
        })
    }

    function ValidateName(){
        var regex = /[\.#$\[\]]/
        return !(regex.test(namebox.value));
    }

     // UpBtn.onclick = UploadProcess;
    // DownBtn.onclick = GetUrlfromRealtimeDB;

</script>
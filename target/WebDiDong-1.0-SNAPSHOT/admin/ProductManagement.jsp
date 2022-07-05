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
                    <tr onclick="setProduct('${pro.getId()}', '${pro.getName()}', '${pro.getPrice()}', '${pro.getQuantity()}',
                            '${pro.getDescription()}', '${pro.getPromotion().getId()}', '${pro.getImage().getId()}','${pro.getImage().getMain_image().getId()}',
                            '${pro.getImage().getSupport_image_1().getId()}', '${pro.getImage().getSupport_image_2().getId()}', '${pro.getImage().getSupport_image_3().getId()}',
                            '${pro.getImage().getMain_image().getUrl_image()}', '${pro.getImage().getSupport_image_1().getUrl_image()}',
                            '${pro.getImage().getSupport_image_2().getUrl_image()}', '${pro.getImage().getSupport_image_3().getUrl_image()}')">
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
                        <form action="controlProduct" method="post">
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
                                    <input type="number" class="form-control input-price" min="0" value="" id="price" name="price" required>
                                </div>
                                <div class="form-group ml-1">
                                    <label for="quantity">Số lượng: </label>
                                    <input type="number" class="form-control" min="0" value="" id="quantity" name="quantity" required>
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
                                <input type="submit" class="btn btn-success btn-fill" name="action" value="CREATE">
                                <input type="submit" class="btn btn-warning btn-fill" name="action" value="UPDATE">
                                <input type="text" name="id_image" id="id_image">
                                <input type="text" name="image_main" id="image_main" value="1">
                                <input type="text" name="image_1" id="image_1" value="1">
                                <input type="text" name="image_2" id="image_2" value="1">
                                <input type="text" name="image_3" id="image_3" value="1">
                                <input type="text" name="url_image_main" id="url_image_main" value="../assets/images/image.jpg">
                                <input type="text" name="url_image_1" id="url_image_1" value="../assets/images/image.jpg">
                                <input type="text" name="url_image_2" id="url_image_2" value="../assets/images/image.jpg">
                                <input type="text" name="url_image_3" id="url_image_3" value="../assets/images/image.jpg">
                            </div>
                        </form>
                    </div>
                    <div class="div-img col-5 p-0">
                        <div class=" mt-5">
                            <label for="imageShow">Hình ảnh: </label>
                            <input type="hidden" name="" id="namebox">

                            <label id="extlab" style="display: none"></label><br>
                            <div class="div-effect-main">
                                <img class="img-product-main w-100" src="../assets/images/image.jpg" id="imageShow" width="240px" height="240px">
                                <span class="plus-main" id="plus-main">+</span>
                            </div>
                            <div class="mt-1 d-flex justify-content-between">
                                <div class="mr-1">
                                    <div class="div-effect-1">
                                        <img class="img-product-1" src="../assets/images/image.jpg" id="img1" width="70px" height="70px">
                                        <span class="plus-1" id="plus-1">+</span>
                                    </div>
                                </div>
                                <div class="mr-1 ml-1">
                                    <div class="div-effect-1">
                                        <img class="img-product-1" src="../assets/images/image.jpg" id="img2" width="70px" height="70px">
                                        <span class="plus-2" id="plus-2">+</span>
                                    </div>
                                </div>
                                <div class="ml-1">
                                    <div class="div-effect-1">
                                        <img class="img-product-1" src="../assets/images/image.jpg" id="img3" width="70px" height="70px">
                                        <span class="plus-3" id="plus-3">+</span>
                                    </div>
                                </div>
                            </div>
                            <div style="margin-top: 10px">
                                <label id="upprogress"></label>
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
    function setProduct(id, name, price, quantity, description, promotion, id_image,
                        main_image, support_image_1, support_image_2, support_image_3,
                        url_main_image, url_support_image_1, url_support_image_2, url_support_image_3) {
        document.getElementById("id").value = id;
        document.getElementById("name").value = name;
        document.getElementById("price").value = price;
        document.getElementById("quantity").value = quantity;
        document.getElementById("description").value = description;
        document.getElementById("promotion").value = promotion;
        document.getElementById("id_image").value = id_image;
        document.getElementById("image_main").value = main_image;
        document.getElementById("image_1").value = support_image_1;
        document.getElementById("image_2").value = support_image_2;
        document.getElementById("image_3").value = support_image_3;
        document.getElementById("url_image_main").value = url_main_image;
        document.getElementById("url_image_1").value = url_support_image_1;
        document.getElementById("url_image_2").value = url_support_image_2;
        document.getElementById("url_image_3").value = url_support_image_3;
        document.getElementById("imageShow").src = url_main_image;
        document.getElementById("img1").src = url_support_image_1;
        document.getElementById("img2").src = url_support_image_2;
        document.getElementById("img3").src = url_support_image_3;
    }
</script>

<script>
    function messDelProduct(pid) {
        const option = confirm('Are you sure to delete');
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

        UploadProcess('image_main', image, 'url_image_main');
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

        UploadProcess('image_1', image1, 'url_image_1');
    }

    //Image No.1 click
    plus1.onclick = function(){
        input1.click();
    }

    //------------------------------------------------

    var input2 = document.createElement('input');
    input2.type = 'file';

    //When input makes changes
    input2.onchange = e =>{
        //Khai báo biến file được upload thành công
        files = e.target.files;
        console.log("files[2] = " + files);


        var extention = GetFileExt(files[0]);
        var name = GetFileName(files[0]);

        namebox.value = name;
        extlab.innerHTML = extention;

        reader.readAsDataURL(files[0]);

        reader.onload = function(){
            image2.src = reader.result;
        }

        UploadProcess('image_2', image2, 'url_image_2');
    }

    //Image No.2 click
    plus2.onclick = function(){
        input2.click();
    }

    //------------------------------------------------

    var input3 = document.createElement('input');
    input3.type = 'file';

    //When input makes changes
    input3.onchange = e =>{
        //Khai báo biến file được upload thành công
        files = e.target.files;
        var extention = GetFileExt(files[0]);
        var name = GetFileName(files[0]);

        namebox.value = name;
        extlab.innerHTML = extention;

        reader.readAsDataURL(files[0]);

        reader.onload = function(){
            image3.src = reader.result;
        }

        UploadProcess('image_3', image3, 'url_image_3');
    }

    //Image No.3 click
    plus3.onclick = function(){
        input3.click();
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
    async function UploadProcess(id, imgShow, url_img) {
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
                proglab.innerHTML = "Upload " + progess + "%";
            },

            (error) =>{
                alert("error: image not uploaded!");
            },

            ()=>{
                getDownloadURL(UploadTask.snapshot.ref).then((downloadURL)=>{
                    var str = document.getElementById("image_main").value;
                    console.log("str " + str);
                    if(str != "1") {
                        console.log("str " + str);

                        if(document.getElementById(id).value.length>1) {
                            console.log("update ");
                            UpdateURLtoRealtimeDB(downloadURL, document.getElementById(id).value, imgShow, url_img);
                        } else {
                            console.log("save");
                            SaveURLtoRealtimeDB(downloadURL, id, imgShow, url_img);
                        }
                    } else {
                        SaveURLtoRealtimeDB(downloadURL, id, imgShow, url_img);
                    }
                });
            }
        );

    }

    // ----------Functions for REALTIME DATABASE ----------

    function UpdateURLtoRealtimeDB(URL, id, imgShow, url_img){
        update(ref(realdb,"ImageLinks/id/"+id),{
            ImgUrl: URL
        }).then((snap) => {

            GetUrlfromRealtimeDB(id, imgShow, url_img);
        });
    }


    function SaveURLtoRealtimeDB(URL, id, imgShow, url_img) {
        let getKey;

        push(ref(realdb,"ImageLinks/id"),{
            ImgUrl: URL
        }).then((snap) => {
            getKey = snap.key
            document.getElementById(id).value = getKey;
            GetUrlfromRealtimeDB(getKey, imgShow, url_img);
        });

    }

    function GetUrlfromRealtimeDB(getKey, imgShow, url_img) {

        const dbRef = ref(realdb);
        get(child(dbRef, "ImageLinks/id/" + getKey)).then((snapshot)=>{
            if(snapshot.exists()){
                imgShow.src = snapshot.val().ImgUrl;
                document.getElementById(url_img).value = snapshot.val().ImgUrl;
                console.log("url xuat: " + snapshot.val().ImgUrl);
            }
        })
    }

    function ValidateName(){
        var regex = /[\.#$\[\]]/
        return !(regex.test(namebox.value));
    }

</script>


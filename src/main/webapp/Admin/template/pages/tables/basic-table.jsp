<%@ page import="vn.edu.hcmuaf.fit.Service.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.Model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.Service.CategoryService" %>
<%@ page import="vn.edu.hcmuaf.fit.Model.Category" %>
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Majestic Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../css/style.css">
    <%--    <style><%@include file="../../css/style.css"%></style>--%>

    <!-- endinject -->
    <link rel="shortcut icon" href="../../images/logoShopKey.png"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/libraries/ckeditor/ckeditor.js"></script>
</head>

<body>
<div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="navbar-brand-wrapper d-flex justify-content-center">
            <div style="padding-left: 40px"
                 class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">
                <a style="height: 40px; width: 50px;" class="navbar-brand brand-logo" href="../../index.jsp"><img
                        src="../../images/logoShopKey.png" alt="logo"/></a>
                <a class="navbar-brand brand-logo-mini" href="index.html"><img src="../../images/logo-mini.svg"
                                                                               alt="logo"/></a>
                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                    <span class="mdi mdi-sort-variant"></span>
                </button>
            </div>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
            <ul class="navbar-nav mr-lg-4 w-100">
                <li class="nav-item nav-search d-none d-lg-block w-100">
                    <div class="input-group">
                        <div class="input-group-prepend">
                <span class="input-group-text" id="search">
                  <i class="mdi mdi-magnify"></i>
                </span>
                        </div>
                        <input type="text" class="form-control" placeholder="T??m ki???m..." aria-label="search"
                               aria-describedby="search">
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav navbar-nav-right">
                <li class="nav-item dropdown me-1">
                    <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center"
                       id="messageDropdown" href="#" data-bs-toggle="dropdown">
                        <i class="mdi mdi-message-text mx-0"></i>
                        <span class="count"></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="messageDropdown">
                        <p class="mb-0 font-weight-normal float-left dropdown-header">Tin nh???n</p>
                        <a class="dropdown-item">
                            <div class="item-thumbnail">
                                <img src="../../images/faces/face4.jpg" alt="image" class="profile-pic">
                            </div>
                            <div class="item-content flex-grow">
                                <h6 class="ellipsis font-weight-normal">Ho??ng Kh???i
                                </h6>
                                <p class="font-weight-light small-text text-muted mb-0">
                                    ????n h??ng c???a t??i khi n??o s??? ???????c giao?
                                </p>
                            </div>
                        </a>
                        <a class="dropdown-item">
                            <div class="item-thumbnail">
                                <img src="../../images/faces/face2.jpg" alt="image" class="profile-pic">
                            </div>
                            <div class="item-content flex-grow">
                                <h6 class="ellipsis font-weight-normal">Th???o Ch??u
                                </h6>
                                <p class="font-weight-light small-text text-muted mb-0">
                                    Shop c??n key windows 11 kh??ng ????
                                </p>
                            </div>
                        </a>
                        <a class="dropdown-item">
                            <div class="item-thumbnail">
                                <img src="../../images/faces/face3.jpg" alt="image" class="profile-pic">
                            </div>
                            <div class="item-content flex-grow">
                                <h6 class="ellipsis font-weight-normal">Minh T??m
                                </h6>
                                <p class="font-weight-light small-text text-muted mb-0">
                                    C???m ??n shop!
                                </p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="nav-item dropdown me-4">
                    <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center notification-dropdown"
                       id="notificationDropdown" href="#" data-bs-toggle="dropdown">
                        <i class="mdi mdi-bell mx-0"></i>
                        <span class="count"></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown"
                         aria-labelledby="notificationDropdown">
                        <p class="mb-0 font-weight-normal float-left dropdown-header">Th??ng b??o</p>
                        <a class="dropdown-item">
                            <div class="item-thumbnail">
                                <div class="item-icon bg-success">
                                    <i class="mdi mdi-information mx-0"></i>
                                </div>
                            </div>
                            <div class="item-content">
                                <h6 class="font-weight-normal">L???i kh??ng th??? hi???n th??? s???n ph???m</h6>
                                <p class="font-weight-light small-text mb-0 text-muted">
                                    5 ph??t tr?????c
                                </p>
                            </div>
                        </a>
                        <a class="dropdown-item">
                            <div class="item-thumbnail">
                                <div class="item-icon bg-warning">
                                    <i class="mdi mdi-settings mx-0"></i>
                                </div>
                            </div>
                            <div class="item-content">
                                <h6 class="font-weight-normal">L???i c??i ?????t h??? th???ng</h6>
                                <p class="font-weight-light small-text mb-0 text-muted">
                                    15 gi??? tr?????c
                                </p>
                            </div>
                        </a>
                        <a class="dropdown-item">
                            <div class="item-thumbnail">
                                <div class="item-icon bg-info">
                                    <i class="mdi mdi-account-box mx-0"></i>
                                </div>
                            </div>
                            <div class="item-content">
                                <h6 class="font-weight-normal">Ng?????i d??ng m???i ????ng k??</h6>
                                <p class="font-weight-light small-text mb-0 text-muted">
                                    2 ng??y tr?????c
                                </p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="nav-item nav-profile dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" id="profileDropdown">
                        <img src="../../images/img-compressed.jpg" alt="profile"/>

                        <span class="nav-profile-name">Nguy???n Trung Hi???u</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                        <a class="dropdown-item">
                            <i class="mdi mdi-settings text-primary"></i>
                            C??i ?????t
                        </a>
                        <a class="dropdown-item">
                            <i class="mdi mdi-logout text-primary"></i>
                            ????ng xu???t
                        </a>
                    </div>
                </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
                    data-toggle="offcanvas">
                <span class="mdi mdi-menu"></span>
            </button>
        </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <jsp:include page="/Admin/template/menu-admin.jsp"></jsp:include>
        <!-- partial -->
        <div class="main-panel">
            <main class="main">
                <div class="container-fluid">
                    <div class="row" id="form__box">
                        <!-- tittle -->
                        <div class="col-12">
                            <div class="main__title">
                                <h4>Th??m s???n ph???m m???i</h4>
                            </div>
                        </div>
                        <!-- content -->
                        <div class="col-12">
                            <form action="" class="form">
                                <div class="row row--form">
                                    <!-- image upload -->
                                    <div class="col-12 col-md-5 form__cover">
                                        <div class="row row--form">
                                            <div class="col-12 col-sm-6 col-md-12">
                                                <div class="form__img">
                                                    <label for="form__img-upload">Th??m ???nh</label>
                                                    <input id="form__img-upload" name="form__img-upload" type="file"
                                                           accept="image/*"
                                                           onchange="document.getElementById('form__img').src = window.URL.createObjectURL(this.files[0])">
                                                    <img id="form__img" src="#" alt="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-7 form__content">
                                        <div class="row row--form">
                                            <div class="col-12">
                                                <input id="name" type="text" class="form__input"
                                                       placeholder="T??n s???n ph???m" name="name">
                                            </div>


                                            <div class="col-12 ">
                                                <input id="old-price" type="text" class="form__input"
                                                       placeholder="Gi?? c??" name="old-price">
                                            </div>

                                            <div class="col-12">
                                                <input id="price" type="text" class="form__input"
                                                       placeholder="Gi?? hi???n t???i" name="price">
                                            </div>
                                            <div class="col-12">
                                                <input id="branch" type="text" class="form__input" placeholder="H??ng"
                                                       name="branch">
                                            </div>
                                            <div class="col-12">
                                                <label style="padding: 0 20px">Lo???i s???n ph???m:</label>
                                                <select id="category"
                                                        style="margin-bottom: 20px; width: 30%; padding: 10px 5px; text-align: center; border-radius: 5px">
                                                    <% CategoryService categoryService = new CategoryService();
                                                        List<Category> categoryList = categoryService.getAllCategory();
                                                        for (Category c : categoryList) {%>
                                                    <option value="<%=c.getCid()%>"><%=c.getCname()%>
                                                    </option>
                                                    <% }%>
                                                </select>
                                            </div>
                                            <div class="col-12">
                                                <input id="device-number" type="text" class="form__input"
                                                       placeholder="S??? l?????ng thi???t b???" name="device-number">
                                            </div>
                                            <div class="col-12">
                                                <input id="amount" type="text" class="form__input"
                                                       placeholder="S??? l?????ng" name="amount">
                                            </div>
                                            <div class="col-12">
                                                <textarea id="description" name="description" class="form__textarea"
                                                          placeholder="M?? t???"></textarea>
                                                <script>
                                                    CKEDITOR.replace('description');
                                                </script>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="row row--form">
                                            <div class="col-12 d-flex justify-content-end">
                                                <button id="btn__add" type="button" class="form__btn mb-5">Th??m</button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="show-product">
                        <div class="main__title">
                            <h4>S???n ph???m trong kho</h4>
                        </div>
                        <input class="form-control mb-4 w-25" placeholder="T??m ki???m s???n ph???m"
                               oninput="searchNameProduct(this)">
                        <table id="table-product">
                            <tr>
                                <th>ID</th>
                                <th>T??n</th>
                                <th>???nh</th>
                                <th>S??? l?????ng</th>
                                <th>Gi??</th>
                                <th>Lo???i key</th>
                                <th>Ch???c n??ng</th>
                            </tr>
                            <% ProductService productService = new ProductService();
                                List<Product> list = productService.getProduct();
                                for (Product p : list) {%>
                            <tr>
                                <td><%=p.getId()%>
                                </td>
                                <td><%=p.getName()%>
                                </td>
                                <td>
                                    <img src="<%=p.getImg()%>">
                                </td>
                                <td><%=p.getAmount()%>
                                </td>
                                <td><%=p.getPrice()%>
                                </td>
                                <td><%=p.getBranch()%>
                                </td>
                                <td>
                                    <a class="delete-product" id="delete<%=p.getId()%>"style="color: red"><i
                                            class="mdi mdi-delete"></i></a>
                                    <a class="edit-product" id="edit<%=p.getId()%>"><i
                                            class="mdi mdi-grease-pencil"></i></a>
                                </td>
                            </tr>
                            <%}%>

                        </table>
                    </div>
                </div>
            </main>
        </div>
    </div>
    <!-- main-panel ends -->
</div>
<!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="../../vendors/base/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="../../js/off-canvas.js"></script>
<script src="../../js/hoverable-collapse.js"></script>
<script src="../../js/temp late.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="../../js/dashboard.js"></script>
<script src="../../js/data-table.js"></script>
<script src="../../js/jquery.dataTables.js"></script>
<script src="../../js/dataTables.bootstrap4.js"></script>
<!-- End custom js for this page-->
<script>
    <%@include file="../../js/jquery-3.6.1.min.js" %>
</script>
<script>
    $(document).ready(function () {
        load();
        loadProductDetailToForm();
        edit();
        add();
    })
    function loadProductDetailToForm() {
        $('.edit-product').each(function (i, val) {
            $(val).click(function (e) {
                e.preventDefault();
                $('html, body').animate({scrollTop: '0px'}, 100);
                let pid = $(this).attr("id");
                $.ajax({
                    url: '/Project_Web_war/loadFormEdit',
                    type: 'post',
                    data: {
                        pid: pid
                    },
                    success: function (response) {
                        $('#form__box').html(response);
                        load();
                        loadProductDetailToForm();
                        add();
                        edit();
                    },
                    error: function () {
                        alert("error");
                    }
                })
            })
        })
    }
    function edit() {
        $('#btn__edit').click(function () {
            let id = $('#id').val();
            let img = $('#form__img').attr('src');
            let name = $('#name').val();
            let oldPrice = $('#old-price').val();
            let price = $('#price').val();
            let branch = $('#branch').val();
            let category = $('#category option').filter(':selected').val();
            let deviceNumber = $('#device-number').val();
            let amount = $('#amount').val();
            let description = $('#description').val();
            $.ajax({
                url: '/Project_Web_war/editProduct',
                type: 'post',
                data: {
                    id: id,
                    img: img,
                    name: name,
                    oldPrice: oldPrice,
                    price: price,
                    branch: branch,
                    category: category,
                    deviceNumber: deviceNumber,
                    amount: amount,
                    description: description
                },
                success: function (response) {
                    $('#table-product').html(response)
                    load();
                    loadProductDetailToForm();
                    add();
                    edit();
                },
                error: function () {
                    alert("L???i")
                }
            })
        })
    }
    function load() {
        const value = document.getElementsByClassName('delete-product');
        for (let i = 0; i < value.length; i++) {
            value.item(i).addEventListener('click', function (e) {
                e.preventDefault();
                let pid = this.id;
                $.ajax({
                    url: '/Project_Web_war/delete',
                    type: 'post',
                    data: {
                        pid: pid
                    },
                    success: function (response) {
                        $('#table-product').html(response)
                        load();
                        loadProductDetailToForm();
                        add();
                        edit();
                    },
                    error: function () {
                    }
                })
            })
        }
    }
    function add() {
        $('#btn__add').click(function () {
            let img = $('#form__img').attr('src');
            let name = $('#name').val();
            let oldPrice = $('#old-price').val();
            let price = $('#price').val();
            let branch = $('#branch').val();
            let category = $('#category option').filter(':selected').val();
            let deviceNumber = $('#device-number').val();
            let amount = $('#amount').val();
            let description =  CKEDITOR.instances.description.getData();
            console.log(description)
            $.ajax({
                url: '/Project_Web_war/addProduct',
                type: 'post',
                data: {
                    img: img,
                    name: name,
                    oldPrice: oldPrice,
                    price: price,
                    branch: branch,
                    category: category,
                    deviceNumber: deviceNumber,
                    amount: amount,
                    description: description
                },
                success: function (response) {
                    $('#table-product').html(response)
                    load();
                    loadProductDetailToForm();
                    add();
                    edit();
                },
                error: function () {
                    alert("Vui l??ng nh???p ????? c??c tr?????ng")
                }
            })
        })
    }
    function searchNameProduct(para) {
        let text = $(para).val();
        $.ajax({
            url: '/Project_Web_war/searchByNameProduct',
            type: 'post',
            data: {
                text : text
            },
            success: function (response) {
                $('#table-product').html(response)
                load();
                edit();
            },
            error: function () {
                alert("L???i");
            }
        })
    }

</script>
</body>

</html>

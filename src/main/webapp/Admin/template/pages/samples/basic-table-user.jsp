<%@ page import="vn.edu.hcmuaf.fit.Service.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.Model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.Service.LoginService" %>
<%@ page import="vn.edu.hcmuaf.fit.Model.User" %>
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
                    <div class="show-product">
                        <div class="main__title">
                            <h4>Danh s??ch ng?????i d??ng</h4>
                        </div>
                        <input class="form-control mb-4 w-25" placeholder="T??m ki???m ng?????i d??ng"
                               oninput="searchNameUser(this)">
                        <table id="table-product">
                            <tr>
                                <th>ID</th>
                                <th>Email</th>
                                <th>T??n</th>
                                <th>S??? ??i???n tho???i</th>
                                <th>Ng??y ????ng k??</th>
                                <th>Ph??n lo???i</th>
                                <th style="text-align: center">Ph??n quy???n</th>
                            </tr>
                            <% LoginService loginService = new LoginService();
                                List<User> list = loginService.getAllUser();
                                for (User u : list) {%>
                            <tr>
                                <td><%=u.getId()%>
                                </td>
                                <td><%=u.getEmail()%>
                                </td>
                                <td><%=u.getName()%>
                                </td>
                                <td><%=u.getPhone()%>
                                </td>
                                <td><%=u.getCreatedAt()%>
                                </td>
                                <% if(u.getIsAdmin() == 0) {%>
                                    <td style="color: #0db20d">Ng?????i d??ng</td>
                                <%} else if(u.getIsAdmin() == 1){%>
                                    <td style="color: red">Qu???n l??</td>
                                <%}%>
                                <td style="text-align: center">
                                    <a class="edit-admin" id="<%=u.getId()%>">
                                        <i class="mdi mdi-table-edit"></i>
                                    </a>
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
        permission();
    })
    function permission() {
        $('.edit-admin').each(function () {
            $(this).click(function (e) {
                e.preventDefault();
                let id = $(this).attr("id");
                $.ajax({
                    url: '/Project_Web_war/permission',
                    type: 'post',
                    data: {
                        id: id
                    },
                    success: function (response) {
                        $('#table-product').html(response)
                        permission();
                    },
                    error: function () {
                        alert("L???i");
                    }
                })
            })
        })
    }
    function searchNameUser(para){
        let text = $(para).val();
        $.ajax({
            url: '/Project_Web_war/searchByNameUser',
            type: 'post',
            data: {
                text : text
            },
            success: function (response) {
                $('#table-product').html(response)
                permission();
            },
            error: function () {
                alert("L???i");
            }
        })
    }
</script>
</body>

</html>

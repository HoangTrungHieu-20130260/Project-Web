<%@ page import="vn.edu.hcmuaf.fit.Service.CategoryService" %>
<%@ page import="vn.edu.hcmuaf.fit.Model.Category" %>
<%@ page import="java.util.List" %>
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
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../css/style.css">
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
                <a class="navbar-brand brand-logo-mini" href="../../index.html"><img src="../../images/logo-mini.svg"
                                                                                     alt="logo"/></a>
                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                    <span class="fas fa-bars"></span>
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
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Th??m danh m???c m???i</h4>
                                <form class="forms-sample mb-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="exampleInputName1"
                                               placeholder="T??n danh m???c m???i">
                                    </div>
                                    <button type="button" class="btn btn-primary me-2">Th??m</button>
                                </form>
                                <h4 class="card-title">Danh s??ch c??c danh m???c</h4>
                                <div class="show-product">
                                    <input class="form-control mb-4 w-25" placeholder="T??m ki???m danh m???c"
                                           oninput="searchNameCategory(this)">
                                    <table class="text-center" id="table-cat">
                                        <tr>
                                            <th>ID</th>
                                            <th>T??n danh m???c</th>
                                            <th>Ch???c n??ng</th>
                                        </tr>
                                        <% CategoryService categoryService = new CategoryService();
                                            List<Category> list = categoryService.getAllCategory();
                                            for (Category category : list) {%>
                                        <tr>
                                            <td><%=category.getCid()%></td>
                                            <td><%=category.getCname()%></td>
                                            <td>
                                                <a class="delete-category" id="delete<%=category.getCid()%>" style="color: red"><i
                                                        class="mdi mdi-delete"></i></a>
                                                <a class="edit-category" id="edit<%=category.getCid()%>"><i
                                                        class="mdi mdi-grease-pencil"></i></a>
                                            </td>
                                        </tr>
                                        <%}%>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:../../partials/_footer.html -->
            <!--        <footer class="footer">-->
            <!--        <div class="d-sm-flex justify-content-center justify-content-sm-between">-->
            <!--          <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright ?? <a href="https://www.bootstrapdash.com/" target="_blank">bootstrapdash.com </a>2021</span>-->
            <!--          <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Only the best <a href="https://www.bootstrapdash.com/" target="_blank"> Bootstrap dashboard  </a> templates</span>-->
            <!--        </div>-->
            <!--        </footer>-->
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="../../vendors/base/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- inject:js -->
<script src="../../js/off-canvas.js"></script>
<script src="../../js/hoverable-collapse.js"></script>
<script src="../../js/template.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="../../js/file-upload.js"></script>
<!-- End custom js for this page-->
<script>
    <%@include file="../../js/jquery-3.6.1.min.js" %>
</script>
<script>
    $(document).ready(function () {
        addCategory();
        deleteCategory();
        loadEditCategory();
        editCategory();
    })
    function deleteCategory() {
        $('.delete-category').each(function () {
            $(this).click(function (e) {
                e.preventDefault();
                let cid = $(this).attr('id');
                console.log(cid)
                $.ajax({
                    url: '/Project_Web_war/deleteCategory',
                    type: 'post',
                    data: {
                        cid : cid
                    },
                    success: function (response) {
                        $('#table-cat').html(response);
                        deleteCategory();
                    },
                    error: function () {
                        alert("L???i")
                    }
                })
            })
        })
    }
    function addCategory() {
        $('.btn-primary').click(function () {
            let name = $('#exampleInputName1').val();
            $.ajax({
                url: '/Project_Web_war/addCategory',
                type: 'post',
                data: {
                    name : name
                },
                success: function (response) {
                    $('#table-cat').html(response);
                    deleteCategory();
                    editCategory();
                },
                error: function () {
                    alert("L???i")
                }
            })
        })
    }
    function loadEditCategory() {
        $('.edit-category').each(function (i, val) {
            $(val).click(function (e) {
                e.preventDefault();
                let cid = $(this).attr('id');
                $.ajax({
                    url: '/Project_Web_war/loadFormEditCategory',
                    typ: 'get',
                    data: {
                        cid : cid
                    },
                    success: function (response) {
                        $('.forms-sample').html(response);
                        editCategory();
                        cancelFormEdit();
                    },
                    error: function () {
                        alert("L???i");
                    }
                })
            })
        })
    }
    function editCategory() {
        $('#btn-edit-cat').click(function () {
            let cid = $('#id-category').text();
            let cname = $('#exampleInputName1').val();
            console.log(cid)
            $.ajax({
                url: '/Project_Web_war/editCategory',
                type: 'post',
                data: {
                    cid : cid,
                    cname : cname
                },
                success: function (response) {
                    $('#table-cat').html(response);
                    deleteCategory();
                    loadEditCategory();
                },
                error: function () {
                    alert("L???i Ch???nh S???a");
                }
            })
        })
    }

    function cancelFormEdit() {
        $('#btn-cancel').click(function () {
            $.ajax({
                url: '/Project_Web_war/loadFormAddCat',
                type: 'get',
                success: function (response) {
                    $('.forms-sample').html(response);
                    addCategory();
                },
                error: function () {
                    alert("L???i");
                }
            })
        })
    }
    function searchNameCategory(para) {
        let text = $(para).val();
        $.ajax({
            url: '/Project_Web_war/searchByNameCategory',
            type: 'post',
            data: {
                text : text
            },
            success: function (response) {
                $('#table-cat').html(response);
                deleteCategory();
                loadEditCategory();
            },
            error: function () {
                alert("L???i")
            }
        })

    }

</script>
</body>

</html>

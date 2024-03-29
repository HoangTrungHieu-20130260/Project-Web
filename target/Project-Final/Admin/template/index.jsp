<!DOCTYPE html>

<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="utf-8" %>

<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Majestic Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../images/logoShopKey.png"/>
</head>
<body>
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="navbar-brand-wrapper d-flex justify-content-center">
            <div style="padding-left: 40px"
                 class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">
                <a style="height: 40px; width: 50px;" class="navbar-brand brand-logo" href="index.html"><img
                        src="images/logoShopKey.png" alt="logo"/></a>
                <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo-mini.svg"
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
                        <input type="text" class="form-control" placeholder="Tìm kiếm..." aria-label="search"
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
                        <p class="mb-0 font-weight-normal float-left dropdown-header">Tin nhắn</p>
                        <a class="dropdown-item">
                            <div class="item-thumbnail">
                                <img src="images/faces/face4.jpg" alt="image" class="profile-pic">
                            </div>
                            <div class="item-content flex-grow">
                                <h6 class="ellipsis font-weight-normal">Hoàng Khải
                                </h6>
                                <p class="font-weight-light small-text text-muted mb-0">
                                    Đơn hàng của tôi khi nào sẽ được giao?
                                </p>
                            </div>
                        </a>
                        <a class="dropdown-item">
                            <div class="item-thumbnail">
                                <img src="images/faces/face2.jpg" alt="image" class="profile-pic">
                            </div>
                            <div class="item-content flex-grow">
                                <h6 class="ellipsis font-weight-normal">Thảo Châu
                                </h6>
                                <p class="font-weight-light small-text text-muted mb-0">
                                    Shop còn key windows 11 không ạ?
                                </p>
                            </div>
                        </a>
                        <a class="dropdown-item">
                            <div class="item-thumbnail">
                                <img src="images/faces/face3.jpg" alt="image" class="profile-pic">
                            </div>
                            <div class="item-content flex-grow">
                                <h6 class="ellipsis font-weight-normal">Minh Tâm
                                </h6>
                                <p class="font-weight-light small-text text-muted mb-0">
                                    Cảm ơn shop!
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
                        <p class="mb-0 font-weight-normal float-left dropdown-header">Thông báo</p>
                        <a class="dropdown-item">
                            <div class="item-thumbnail">
                                <div class="item-icon bg-success">
                                    <i class="mdi mdi-information mx-0"></i>
                                </div>
                            </div>
                            <div class="item-content">
                                <h6 class="font-weight-normal">Lỗi không thể hiển thị sản phẩm</h6>
                                <p class="font-weight-light small-text mb-0 text-muted">
                                    5 phút trước
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
                                <h6 class="font-weight-normal">Lỗi cài đặt hệ thống</h6>
                                <p class="font-weight-light small-text mb-0 text-muted">
                                    15 giờ trước
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
                                <h6 class="font-weight-normal">Người dùng mới đăng kí</h6>
                                <p class="font-weight-light small-text mb-0 text-muted">
                                    2 ngày trước
                                </p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="nav-item nav-profile dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" id="profileDropdown">
                        <img src="images/img-compressed.jpg" alt="profile"/>
                        <span class="nav-profile-name">Nguyễn Trung Hiếu</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                        <a class="dropdown-item">
                            <i class="mdi mdi-settings text-primary"></i>
                            Cài đặt
                        </a>
                        <a class="dropdown-item">
                            <i class="mdi mdi-logout text-primary"></i>
                            Đăng xuất
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
                    <div class="col-md-12 grid-margin">
                        <div class="d-flex justify-content-between flex-wrap">
                            <div class="d-flex align-items-end flex-wrap">
                                <div class="me-md-3 me-xl-5">
                                    <h2>Chào mừng trở lại</h2>
                                    <p class="mb-md-0">Thống kê các doanh số của web</p>
                                </div>
<%--                                <div class="d-flex">--%>
<%--                                    <i class="mdi mdi-home text-muted hover-cursor"></i>--%>
<%--                                    <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Trang chính&nbsp;/&nbsp;</p>--%>
<%--                                    <p class="text-primary mb-0 hover-cursor">Số liệu thống kê</p>--%>
<%--                                </div>--%>
                            </div>
                            <div class="d-flex justify-content-between align-items-end flex-wrap">
                                <button type="button" class="btn btn-light bg-white btn-icon me-3 d-none d-md-block ">
                                    <i class="mdi mdi-download text-muted"></i>
                                </button>
                                <button type="button" class="btn btn-light bg-white btn-icon me-3 mt-2 mt-xl-0">
                                    <i class="mdi mdi-clock-outline text-muted"></i>
                                </button>
                                <button type="button" class="btn btn-light bg-white btn-icon me-3 mt-2 mt-xl-0">
                                    <i class="mdi mdi-plus text-muted"></i>
                                </button>
                                <button class="btn btn-primary mt-2 mt-xl-0">Tạo bản báo cáo</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body dashboard-tabs p-0">
                                <ul class="nav nav-tabs px-4" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="overview-tab" data-bs-toggle="tab"
                                           href="#overview" role="tab" aria-controls="overview" aria-selected="true">Tổng
                                            quan</a>
                                    </li>
                                </ul>
                                <div class="tab-content py-0 px-0">
                                    <div class="tab-pane fade show active" id="overview" role="tabpanel"
                                         aria-labelledby="overview-tab">
                                        <div class="d-flex flex-wrap justify-content-xl-between">
                                            <div class="d-none d-xl-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                                                <i class="mdi mdi-calendar-heart icon-lg me-3 text-primary"></i>
                                                <div class="d-flex flex-column justify-content-around">
                                                    <small class="mb-1 text-muted">Ngày bắt đầu</small>
                                                    <div class="dropdown">
                                                        <a class="btn btn-secondary dropdown-toggle p-0 bg-transparent border-0 text-dark shadow-none font-weight-medium"
                                                           href="#" role="button" id="dropdownMenuLinkA"
                                                           data-bs-toggle="dropdown" aria-haspopup="true"
                                                           aria-expanded="false">
                                                            <h5 class="mb-0 d-inline-block">Ngày 01 Tháng 10 Năm
                                                                2022</h5>
                                                        </a>
                                                        <!--                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLinkA">-->
                                                        <!--                                <a class="dropdown-item" href="#">Ngày 01 Tháng 10 Năm 2022</a>-->
                                                        <!--                              </div>-->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                                                <i class="mdi mdi-cash me-3 icon-lg text-danger"></i>
                                                <div class="d-flex flex-column justify-content-around">
                                                    <small class="mb-1 text-muted">Doanh thu</small>
                                                    <h5 class="me-2 mb-0">6.700.000 VND</h5>
                                                </div>
                                            </div>
                                            <div class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                                                <i class="mdi mdi-account me-3 icon-lg text-success"></i>
                                                <div class="d-flex flex-column justify-content-around">
                                                    <small class="mb-1 text-muted">Số quản trị viên</small>
                                                    <h5 class="me-2 mb-0">3</h5>
                                                </div>
                                            </div>
                                            <div class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                                                <i class="mdi mdi-truck-delivery me-3 icon-lg text-warning"></i>
                                                <div class="d-flex flex-column justify-content-around">
                                                    <small class="mb-1 text-muted">Số đơn hàng đã giao</small>
                                                    <h5 class="me-2 mb-0">223</h5>
                                                </div>
                                            </div>
                                            <div class="d-flex py-3 border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                                                <i class="mdi mdi-star-circle me-3 icon-lg text-danger"></i>
                                                <div class="d-flex flex-column justify-content-around">
                                                    <small class="mb-1 text-muted">Số lượt đánh giá 5 sao</small>
                                                    <h5 class="me-2 mb-0">189</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--          <div class="row">-->
                <!--            <div class="col-md-7 grid-margin stretch-card">-->
                <!--              <div class="card">-->
                <!--                <div class="card-body">-->
                <!--                  <p class="card-title">Biểu đồ thu nhập</p>-->
                <!--                  <div id="cash-deposits-chart-legend" class="d-flex justify-content-center pt-3"></div>-->
                <!--                  <canvas id="cash-deposits-chart"></canvas>-->
                <!--                </div>-->
                <!--              </div>-->
                <!--            </div>-->
                <!--            <div class="col-md-5 grid-margin stretch-card">-->
                <!--              <div class="card">-->
                <!--                <div class="card-body">-->
                <!--                  <p class="card-title">Tổng doanh thu</p>-->
                <!--                  <h1>78.950.000 VND</h1>-->
                <!--                  <h4>Tăng trưởng qua từng tháng</h4>-->
                <!--                  <div id="total-sales-chart-legend"></div>
                <!--                </div>-->
                <!--                <canvas id="total-sales-chart"></canvas>-->
                <!--              </div>-->
                <!--            </div>-->
                <!--          </div>-->

                <div class="row">
                    <div class="col-md-12 stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <p class="card-title">Các giao dịch gần đây</p>
                                <div class="table-responsive">
                                    <table id="recent-purchases-listing" class="table">
                                        <thead>
                                        <tr>
                                            <th>Tên khách hàng</th>
                                            <th>Tên giao dịch</th>
                                            <th>Trạng thái giao dịch</th>
                                            <th>Giá cả</th>
                                            <th>Ngày</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Ngô Công Dũng</td>
                                            <td>Mua Key</td>
                                            <td>Giao dịch thành công</td>
                                            <td>700.000 VND</td>
                                            <td>27.10.2022</td>
                                        </tr>
                                        <tr>
                                            <td>Lê Thu Thảo</td>
                                            <td>Phân phối sản phẩm</td>
                                            <td>Chờ thanh toán</td>
                                            <td>300.000 VND</td>
                                            <td>21.10.2022</td>
                                        </tr>
                                        <tr>
                                            <td>Trần Minh Thư</td>
                                            <td>Đổi trả</td>
                                            <td>Đang xử lý</td>
                                            <td>100.000 VND</td>
                                            <td>15.10.2022</td>
                                        </tr>
                                        <tr>
                                            <td>Nguyễn Thanh Sơn</td>
                                            <td>Mua key</td>
                                            <td>Giao dịch thành công</td>
                                            <td>500.000 VND</td>
                                            <td>07.10.2022</td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:partials/_footer.html -->
            <!--        <footer class="footer">-->
            <!--        <div class="d-sm-flex justify-content-center justify-content-sm-between">-->
            <!--          <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © <a href="https://www.bootstrapdash.com/" target="_blank">bootstrapdash.com </a>2021</span>-->
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
<script src="vendors/base/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<script src="vendors/chart.js/Chart.min.js"></script>
<script src="vendors/datatables.net/jquery.dataTables.js"></script>
<script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="js/off-canvas.js"></script>
<script src="js/hoverable-collapse.js"></script>
<script src="js/template.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="js/dashboard.js"></script>
<script src="js/data-table.js"></script>
<script src="js/jquery.dataTables.js"></script>
<script src="js/dataTables.bootstrap4.js"></script>
<!-- End custom js for this page-->

<script src="js/jquery.cookie.js" type="text/javascript"></script>
</body>

</html>


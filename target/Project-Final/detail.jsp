<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="fontawesome/css/all.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>
<body>
<div id="main">
    <!--    Begin Header-->
    <div id="header">
        <div class="config-top-banner">
            <p class="slogan">
                Xài Key bản quyền
                <span class="icon-slogan mr-1 ml-1">
                            <i class="fa-sharp fa-solid fa-key"></i>
                        </span>, nói không với crack!
            </p>
        </div>
        <div class="container pt-3">
            <div class="menu row">
                <div class="col-2">
                    <img src="image/logoShopKey.png" alt="logo">
                </div>
                <div class="col-8">
                    <ul class="drop-menu">
                        <li class="menu-item"><a class="p-3" href="index.jsp">Trang Chủ</a></li>
                        <li class="menu-item"><a class="p-3" href="product.jsp">Sản Phẩm</a></li>
                        <li class="menu-item"><a class="p-3" href="about-us.jsp">Giới Thiệu</a></li>
                        <li class="menu-item"><a class="p-3" href="contact.jsp">Liên Hệ</a></li>
                    </ul>
                </div>
                <div class="menu-right col-2">
                    <span class="icon-item search">
                        <span id="icon-search"><i class="fa-solid fa-magnifying-glass"></i></span>
                        <div id="search-container">
                            <div class="arrow-search"></div>
                            <p class="title-in-search text-center">TÌM KIẾM</p>
                            <div class="box-search d-flex">
                                <input type="search" placeholder="Nhập tìm kiếm ở đây">
                                <button class="btn-search"><i class="fa-solid fa-magnifying-glass"></i></button>
                                <button class="btn-close"><i class="fa-solid fa-xmark"></i></button>
                            </div>
                        </div>
                    </span>
                    <span class="icon-item">
                        <a href="cart.jsp">
                            <span class="icon-cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                            <span class="amount-cart">3</span>
                        </span>
                        </a>
                    </span>
                    <span class="icon-item">
                        <span><i class="fa-regular fa-user" class="btn btn-primary" data-toggle="modal"
                                 data-target="#exampleModal"></i>
                        </span>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <!--    End Header-->
    <!--    Begin Content-->
    <div id="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12 detail-img-product">
                    <img src="image/product-image/windows/windows-11-pro-mak-510x510.png" alt="">
                </div>
                <div class="col-lg-6 col-md-12 entry-summary">
                    <h1 class="entry-title">Key Windows 11 Pro Mak</h1>
                    <div class="entry-rating">
                        <span class="star-rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </span>
                        <span class="review-rating">(36 đánh giá từ khách hàng)</span>
                    </div>
                    <p class="entry-price">1.200.000 <span class="entry-currency">VND</span></p>
                    <div class="product-details-short-description">
                        <h3>Thông tin chi tiết sản phẩm</h3>
                        <p>
                            <b><span>Thương hiệu:</span></b><span>&nbsp;&nbsp;Windows</span><br>
                            <b><span>Trình trạng:</span></b><span>&nbsp;&nbsp;Còn hàng</span><br>
                            <b><span>Loại Phương tiện: </span></b><span>&nbsp;&nbsp;Key và Tải xuống – Hướng dẫn sẽ được gửi qua email cho bạn.</span><br>
                            <b><span>Thời hạn cấp phép:</span></b><span>&nbsp;&nbsp;1 Năm</span><br>
                            <b><span>Số lượng thiết bị:</span></b><span>&nbsp;&nbsp;1</span><br>
                        </p>
                        <div class="category-product">
                            <p class="mb-0">
                                <b>Sản phẩm tương tự:&nbsp;&nbsp;</b>
                                <a href="product.jsp">Key Windows</a>
                            </p>
                        </div>
                        <form class="detail-add-product-to-cart">
                            <input type="number" name="quantity" min="1" step="1" value="1">
                            <button>Thêm vào giỏ hàng</button>
                        </form>
                    </div>
                </div>
                <div class="description">
<!--                        <ul class="tab_list" role="tablist">-->
<!--                            <li class="description_tab" id="description_title" role="tab" aria-controls="description_content"><a href="#description_content">Mô tả</a></li>-->
<!--                            <li class="rated_tab" id="rated_title" role="tab" aria-controls="rated_content"><a href="#rated_content">Đánh giá</a></li>-->
<!--                        </ul>-->
                    <div class="tab">
                        <button class="tablinks" onclick="openSection(event, 'description_content')">Mô tả</button>
                        <button class="tablinks" onclick="openSection(event, 'rated_content')">Đánh giá</button>
                    </div>
                    <div class="tabcontent" id="description_content" role="tabpanel" aria-labelledby="description_title">
                        <h3>Tổng quan về Windows 11</h3>
                        <p>Phiên bản Windows 11 hiện đang là từ khóa hot nhất được tìm kiếm nhiều nhất hiện nay, mọi người đang sử dụng Windows đề đang đổ dồn sự chú ý về key Windows 11 mới nhất này. Mặc dù trước đây, Microsoft đã từng tuyên bố Windows 10 sẽ là phiên bản hệ điều hành cuối cùng  nhưng vào thời điểm hiện tại Microsoft đã cho ra mắt key Windows 11 bản quyền  với nhiều tính năng mới mẻ, thú vị mang tính cá nhân hóa cao.</p>
                        <img src="image/detail_image.jpg" alt="">
                        <p>Phiên bản Key bản quyền Windows 11 có thiết kế giao diện hoàn toàn mới so với Windows 10, người dùng sẽ được trải nghiệm những tính năng mới, thông minh và tiện ích nhất mà Microsoft mang lại. Đồng thời, trong phiên bản này  có những điểm đặc biệt nổi bật như: Menu Start mới, nâng cấp bàn phím ảo, các biểu tượng hệ thống mới, giao diện Microsoft Store mới, thanh Taskbar mới, cải thiện tính năng nhập liệu bằng giọng nói, giao diện Action Center mới,… Thiết kế này khá tương đồng với Windows 10X, hứa hẹn sẽ cạnh tranh mạnh mẽ với Chrome OS.</p>
                    </div>
                    <div class="tabcontent" id="rated_content" role="tabpanel" aria-labelledby="rated_title">
                        <div class="user_rate">
                            <div class="image_rate">
                                <img src="Admin/template/images/faces/face1.jpg" alt="">
                            </div>
                            <div class="info_rate">
                                <h3>Ngô Công Dũng</h3>
                                <p>Đã đánh giá: 25/10/2022</p>
                                <p>Bộ office kích hoạt rất nhanh chóng và sử dụng ổn định.</p>
                            </div>
                            <div class="star">
                                <img src="image/5-gold-star.png" alt="">
                            </div>
                        </div>
                        <div class="user_rate">
                            <div class="image_rate">
                                <img src="Admin/template/images/faces/face10.jpg" alt="">
                            </div>
                            <div class="info_rate">
                                <h3>Đào Kim Ngọc</h3>
                                <p>Đã đánh giá: 12/10/2022</p>
                                <p>Key adobe photoshop rất dễ kích hoạt và sử dụng.</p>
                            </div>
                            <div class="star">
                                <img src="image/5-gold-star.png" alt="">
                            </div>
                        </div>
                        <div class="user_rate">
                            <div class="image_rate">
                                <img src="Admin/template/images/faces/face9.jpg" alt="">
                            </div>
                            <div class="info_rate">
                                <h3>Trần Thanh Hải</h3>
                                <p>Đã đánh giá: 30/09/2022</p>
                                <p>Bộ key windows 5 thiết bị dùng cho gia đình quá là tiết kiệm.</p>
                            </div>
                            <div class="star">
                                <img src="image/5-gold-star.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  End Content-->
    <!--    Begin Footer-->
    <div id="footer">
        <div class="container footer-main">
            <div class="footer-left footer-column">
                <div class="footer-logo ">
                    <a href="index.jsp">
                        <img src="image/logoShopKey.png" alt="">
                    </a>
                </div>
                <div class="text-intro">
                    <p>Đăng kí ngay để nhận được các thông tin ưu đãi,
                        khuyến mãi đến từ cửa hàng và cũng như cập nhật các tin tức thông tin
                        về sản phẩm.
                    </p>
                </div>
                <div class="newsletter-sign-up">
                    <h2 class="newsletter-title">Đăng kí bản tin</h2>
                    <input class="newsletter-input" type="text" name="" id="" placeholder="Email">
                    <button class="newsletter-button">Gửi</button>
                </div>
            </div>
            <div class="footer-center footer-column">
                <div class="footer-space"></div>
                <h4 class="footer-title">Sản Phẩm</h4>
                <div class="footer-list-product">
                    <a class="footer-product-item" href=""><i class="fa-solid fa-chevron-right"></i>Windows</a>
                    <a class="footer-product-item" href=""><i class="fa-solid fa-chevron-right"></i>Office</a>
                    <a class="footer-product-item" href=""><i class="fa-solid fa-chevron-right"></i>Adobe</a>
                    <a class="footer-product-item" href=""><i class="fa-solid fa-chevron-right"></i>Anti Virus</a>
                    <a class="footer-product-item" href=""><i class="fa-solid fa-chevron-right"></i>Google</a>
                    <a class="footer-product-item" href=""><i class="fa-solid fa-chevron-right"></i>Khác</a>
                </div>
            </div>
            <div class="footer-right footer-column">
                <div class="footer-space"></div>
                <h4 class="footer-title">Liên Hệ</h4>
                <div class="footer-contact">
                    <p class="footer-information"><i class="fa-solid fa-location-dot"></i>Đại học Nông Lâm TpHCM</p>
                    <p class="footer-information"><i class="fa-solid fa-phone"></i>(+84) 852995378</p>
                    <p class="footer-information"><i class="fa-solid fa-envelope"></i>20130260@st.hcmuaf.edu.vn</p>
                </div>
                <div class="footer-social">
                    <a href=""><i class="fa-brands fa-facebook"></i></a>
                    <a href=""><i class="fa-brands fa-twitter"></i></a>
                    <a href=""><i class="fa-brands fa-instagram"></i></a>
                    <a href=""><i class="fa-brands fa-linkedin"></i></a>
                    <a href=""><i class="fa-brands fa-github"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!--    End Footer-->
    <!--    Begin Back to top-->
    <div id="back-to-top">
        <a class="link-btt" href="#main"><i class="fa-sharp fa-solid fa-arrow-up"></i></a>
    </div>
    <!--    End Back to top-->

    <!--Begin Login-->
    <div id="login">
        <!-- Modal -->
        <div class="modal fade pt-5" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content pl-3 pr-3" style="background: #efefef">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Đăng nhập để tiếp tục</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="body-container">
                            <div class="choose d-flex">
                                <div class="sign-in-choose w-50 text-center">Đăng nhập</div>
                                <div class="sign-up-choose w-50 text-center">Đăng kí</div>
                            </div>
                            <div class="sign-in-container">
                                <form action="">
                                    <div class="input-information">
                                        <i class="fa-solid fa-user"></i>
                                        <input type="text" name="uname" placeholder="Tài khoản hoặc Email">
                                    </div>
                                    <div class="input-information">
                                        <i class="fa-solid fa-lock"></i>
                                        <input type="password" name="pass" placeholder="Mật khẩu">
                                    </div>
                                </form>
                                <div class="remember-forgot">
                                    <div class="remember">
                                        <input type="checkbox" name="check">Nhớ mật khẩu
                                    </div>
                                    <a href="#">Quên mật khẩu</a>
                                </div>
                                <div class="btn-login-container">
                                    <button class="btn-login btn-sign-in" type="button">Đăng nhập</button>
                                </div>
                            </div>
                            <div class="sign-up-container">
                                <form action="">
                                    <div class="input-information">
                                        <i class="fa-solid fa-envelope"></i>
                                        <input type="email" name="email-sign-up" placeholder="Email">
                                    </div>
                                    <div class="input-information">
                                        <i class="fa-solid fa-phone"></i>
                                        <input type="number" name="phone-sign-up" placeholder="Số điện thoại">
                                    </div>
                                    <div class="input-information">
                                        <i class="fa-solid fa-lock"></i>
                                        <input type="password" name="pass-sign-up" placeholder="Mật khẩu">
                                    </div>
                                    <div class="input-information">
                                        <i class="fa-solid fa-lock"></i>
                                        <input type="password" name="pass-sign-up" placeholder="Nhập lại mật khẩu">
                                    </div>
                                </form>
                                <div class="btn-login-container">
                                    <button class="btn-login btn-sign-up" type="button">Đăng ký</button>
                                </div>
                            </div>
                            <p class="text-center">Hoặc</p>
                            <div class="login-with">
                                <a href="#"><i class="fa-brands fa-facebook"></i></a>
                                <a href="#"><i class="fa-brands fa-google"></i></a>
                                <a href="#"><i class="fa-brands fa-github"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <!--End Login-->

    <!--    Script-->
    <script src="js/jquery-3.6.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/slideShow.js"></script>
</div>
</body>
</html>
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
    <!--Content Begin-->
    <div id="content">
        <!--Contact area start-->
        <div class="contact_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="contact_message content">
                            <h3>Liên hệ với chúng tôi</h3>
                            <p>Nếu bạn có bất cứ vấn đề hoặc thắc mắc nào có thể phản hồi với chúng tôi qua các cách
                                thức liên lạc bên dưới.</p>
                            <p>Hoặc có thể điền vào biểu mẫu bên cạnh để mô tả sơ lược về vấn đề mà bạn gặp phải.</p>
                            <ul>
                                <li><i class="fa-solid fa-location-dot"></i> Địa chỉ liên hệ: Khu phố 6, phường Linh Trung, TP. Thủ
                                    Đức, TP.HCM
                                </li>
                                <li><i class="fa-solid fa-envelope"></i> Email nhận phản hồi: 20130260@st.hcmuaf.edu.vn
                                </li>
                                <li><i class="fa fa-phone"></i> Số điện thoại liên lạc: 0852995378</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="contact_message form">
                            <h3>Mô tả vấn đề của bạn</h3>
                            <form id="contact-form" method="POST">
                                <p>
                                    <label> Họ và tên (bắt buộc)</label>
                                    <input name="name" placeholder="Họ và tên*" type="text">
                                </p>
                                <p>
                                    <label> Địa chỉ email (bắt buộc)</label>
                                    <input name="email" placeholder="Địa chỉ email*" type="email">
                                </p>
                                <p>
                                    <label> Số điện thoại</label>
                                    <input name="subject" placeholder="Số điện thoại" type="text">
                                </p>
                                <div class="contact_textarea">
                                    <label> Mô tả vấn đề (bắt buộc)</label>
                                    <textarea placeholder="Mô tả*" name="message" class="form-control2"></textarea>
                                </div>
                                <button type="submit"> Gửi</button>
                                <p class="form-messege"></p>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Contact area end-->

        <!--Map Location Begin-->
        <div class="map">
            <div class="map_location">
                <h3>Vị trí trên bản đồ:</h3>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.214525476974!2d106.78957301590339!3d10.87128166040572!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRwLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1666705870481!5m2!1svi!2s"
                        width="1200" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
        <!--Map Location End-->
    </div>
    <!--    End Content-->
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
</div>
<!--Begin Login-->
<div id="login">
    <!-- Modal -->
    <div class="modal fade pt-2" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
<!--End Login-->
<!--    Script-->
<script src="js/jquery-3.6.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>


</body>
</html>
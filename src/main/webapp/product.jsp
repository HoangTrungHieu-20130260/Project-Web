<%@ page import="vn.edu.hcmuaf.fit.Service.ProductService" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.Model.Product" %>
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
                        <span>
                            <a href="login.jsp">
                                <i class="fa-regular fa-user" class="btn btn-primary"></i>
                            </a>
                        </span>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <!--    End Header-->
    <!--    Begin Content-->
    <div id="content">
        <div class="container d-flex">
            <div class="filter w-25">
                <div class="filter-duration filter-container">
                    <span class="title-dots"></span>
<%--                <div class="price-filter filter-container">--%>
<%--                    <span class="title-dots"></span>--%>
                    <p class="title-filter">Lọc theo giá</p>
<%--                    <form action="">--%>
<%--                        <input type="range" class="range-filter" min="100000" max="10000000" step="100000"--%>
<%--                               value="100000">--%>
<%--                        <label>Giá: <span class="show-range-value"></span>₫</label>--%>
<%--                    </form>--%>
                    <form action="">
                        <input type="checkbox" name="" checked>
                        <label>Tất cả</label><br>
                        <input type="checkbox" name="">
                        <label>Dưới 1 triệu</label><br>
                        <input type="checkbox" name="">
                        <label>Từ 1-3 triệu</label><br>
                        <input type="checkbox" name="">
                        <label>Từ 3-5 triệu</label><br>
                        <input type="checkbox" name="">
                        <label>Trên 5 triệu</label><br>
                    </form>
                </div>
                <div class="filter-branch filter-container">
                    <span class="title-dots"></span>
                    <c:set var="checkId" value="${requestScope.checkId}"/>
                    <p class="title-filter">Lọc theo sản phẩm</p>
                    <form action="">
                        <input type="checkbox" name="" checked>
                        <label>Tất cả</label><br>
                        <input type="checkbox" name="">
                        <label>Windows</label><br>
                        <input type="checkbox" name="">
                        <label>Adobe</label><br>
                        <input type="checkbox" name="">
                        <label>Microsoft</label><br>
                        <input type="checkbox" name="">
                        <label>Anti Virus</label><br>
                    </form>
                </div>
<%--                <div class="filter-duration filter-container">--%>
<%--                    <span class="title-dots"></span>--%>
<%--                    <p class="title-filter">Lọc theo thời hạn</p>--%>
<%--                    <form action="">--%>
<%--                        <input type="checkbox" name="" checked>--%>
<%--                        <label>Tất cả</label><br>--%>
<%--                        <input type="checkbox" name="">--%>
<%--                        <label>30 Ngày</label><br>--%>
<%--                        <input type="checkbox" name="">--%>
<%--                        <label>3 Tháng</label><br>--%>
<%--                        <input type="checkbox" name="">--%>
<%--                        <label>6 Tháng</label><br>--%>
<%--                        <input type="checkbox" name="">--%>
<%--                        <label>1 Năm</label><br>--%>
<%--                        <input type="checkbox" name="">--%>
<%--                        <label>Vĩnh viễn</label><br>--%>
<%--                    </form>--%>
<%--                </div>--%>
                <div class="container-btn-filter">
                    <button class="btn-filter">LỌC</button>
                </div>
            </div>
            <div class="product-filter">
                <form class="woocommerce-ordering" action="">
                    <select class="order-by">
                        <option value="menu_order" selected="selected">Thứ tự mặc định</option>
                        <option value="date">Mới nhất</option>
                        <option value="popularity">Thứ tự theo mức độ phổ biến</option>
                        <option value="price">Thứ tự theo giá: thấp đến cao</option>
                        <option value="price-desc">Thứ tự theo giá: cao xuống thấp</option>
                    </select>

                </form>
                <div class="product-filter-container">
<%--                    <% List<Product> list = (List<Product>) request.getAttribute("listP");--%>
                    <% ProductService productService = new ProductService();
                        List<Product> list = productService.getProduct();
                        for (Product p : list) {%>
                    <div class="product-item">
                        <a href="detail.jsp?pid=<%=p.getId()%>">
                            <img class="product-image" src="<%= p.getImg()%>" alt="">
                        </a>
                        <p class="product-type"><%= p.getBranch()%>
                        </p>
                        <a href="detail.jsp?pid=<%=p.getId()%>"><p class="product-name"><%= p.getName()%></p></a>
                        <div class="product-star text-center">
                            <span class="number-of-stars">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </span>
                        </div>
                        <div class="product-price">
                            <del class="product-old-price"><%=p.getOldPrice()%><span class="currency">₫</span></del>
                            <span class="product-new-price"><%=p.getPrice()%><span class="currency">₫</span></span>
                        </div>
                        <div class="product-choose">
                            <button class="add-to-cart">
                                <i class="fa-solid fa-cart-plus"></i>Thêm Vào Giỏ
                            </button>
                        </div>
                    </div>
                    <%}%>
                    <div class="product-item">
                        <a href="detail.jsp">
                            <img class="product-image" src="image/product-image/windows/windows-11-pro-mak-510x510.png"
                                 alt="">
                        </a>
                        <p class="product-type">Windows</p>
                        <a href="detail.jsp"><p class="product-name">Windows 10 (Home/Edu/Pro)</p></a>
                        <div class="product-star text-center">
                            <span class="number-of-stars">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </span>
                        </div>
                        <div class="product-price">
                            <del class="product-old-price">100.000<span class="currency">₫</span></del>
                            <span class="product-new-price">100.000<span class="currency">₫</span></span>
                        </div>
                        <div class="product-choose">
                            <button class="add-to-cart">
                                <i class="fa-solid fa-cart-plus"></i>Thêm Vào Giỏ
                            </button>
                        </div>
                    </div>
                </div>
                <div class="page-numbers mt-4">
                    <button class="btn-number-pages" aria-checked="">1</button>
                    <button class="btn-number-pages">2</button>
                    <button class="btn-number-pages">></button>
                </div>
            </div>

        </div>
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
<!--    Script-->
<script src="js/jquery-3.6.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="js/range-filter.js"></script>
<script>type="text/javascript"
    function setCheck(obj) {
        var fries = document.getElementsByName('cid');
        if ((obj.id == '') && (fries[0].checked == true)) {
            for (var i = 1; i < fries.length; i++)
                fries[i].check = false;
        } else {
            for (var i = 1; i < fries.length; i++) {
                if (fries[i].checked == true) {
                    fries[0].check = false;
                    break;
                }
            }
        }
        document.getElementById('f1').submit();
    }
</script>
</body>
</html>

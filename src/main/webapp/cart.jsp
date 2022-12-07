<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.Model.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.Service.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.Database.DbCon" %>
<%@ page import="vn.edu.hcmuaf.fit.Controller.AddToCart" %>
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    //	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
//	List<Cart> cartProduct = null;
//	if (cart_list != null) {
//		ProductService pDao = new ProductService(DbCon.getConnection());
//		cartProduct = pDao.getCartProducts(cart_list);
////		double total = pDao.getTotalCartPrice(cart_list);
////		request.setAttribute("total", total);
//		request.setAttribute("cart_list", cart_list);
//	}


%>
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

<!--Begin Content-->
<div id="wrapper">
    <div class="container">
        <div class="cart">
            <div class="title">
                <h3>Giỏ hàng</h3>
                <div class="return_button">
                    <a href="index.jsp">Trở lại <i class="fas fa-caret-square-right ml-2"></i></a>
                </div>
            </div>
            <div class="title_cart">
                <div class="product_name"><p>Tên sản phẩm</p></div>
                <div class="product_price"><p>Giá tiền</p></div>
                <div class="product_quantity"><p>Số lượng</p></div>
                <div class="product_total"><p>Tổng cộng</p></div>
                <div class="remove_button">&nbsp;</div>
            </div>
            <%
                //				if (cart_list != null) {
//					for (Cart c : cartProduct) {
                for (int i = 0; i < AddToCart.carts.size(); i++) {
                    Cart c = AddToCart.carts.get(i);
            %>
            <div class="product_contain">
                <%--				<input type="hidden" name="id" value="<%= c.getId()%>">--%>
                <div class="image">
                    <img src="<%= c.getPro().getImg()%>">
                </div>
                <div class="product_details">
                    <div class="name"><%= c.getPro().getName()%>
                    </div>
                    <p>Key kích hoạt Windows 11 phiên bản professional</p>
                </div>
                <div class="price"><p><%= c.getPro().getPrice()%></p></div>
                <div class="quantity">
                    <input type="number" value="<%= c.getQuantity()%>" min="1">
                </div>
                <div class="total">
                    <p><%= c.getPro().getPrice() * c.getQuantity()%></p>
                </div>
                <div class="remove">
                    <button><i class="fas fa-trash-alt"></i></button>
                </div>
            </div>
            <%
                }
            %>

            <%--			<div class="product_contain">--%>
            <%--				<div class="image">--%>
            <%--					<img src="image/product-image/design/autodesk-revit-ban-quyen.png">--%>
            <%--				</div>--%>
            <%--				<div class="product_details">--%>
            <%--					<div class="name">Key bản quyền Autodesk Revit</div>--%>
            <%--					<p>Key kích hoạt phần mềm Autodesk Revit</p>--%>
            <%--				</div>--%>
            <%--				<div class="price"><p>300.000 VND</p></div>--%>
            <%--				<div class="quantity">--%>
            <%--					<input type="number" value="2" min="1">--%>
            <%--				</div>--%>
            <%--				<div class="total">--%>
            <%--					<p>600.000 VND</p>--%>
            <%--				</div>--%>
            <%--				<div class="remove">--%>
            <%--					<button><i class="fas fa-trash-alt"></i></button>--%>
            <%--				</div>--%>
            <%--			</div>--%>
            <div class="total_price">
                <div class="discount_code">
                    <div class="discount_contain">
                        <p>Nhập mã giảm giá tại đây:</p>
                        <input type="text" id="discount" placeholder="Mã giảm giá">
                        <button><i class="fas fa-chevron-right"></i></button>
                    </div>
                </div>
                <div class="subtotal cf">
                    <div class="total_contain">
                        <ul>
                            <li class="totalRow"><span class="label">Tổng cộng:</span><span
                                    class="value">1.000.000 VND</span></li>
                            <li class="totalRow"><span class="label">Chi phí vận chuyển:</span><span class="value">Miễn phí</span>
                            </li>
                            <li class="totalRow"><span class="label">Thuế VAT (10%):</span><span class="value">100.000 VND</span>
                            </li>
                            <li class="totalRow final"><span class="label">Thành tiền:</span><span class="value">1.100.000 VND</span>
                            </li>
                            <li class="totalRow_button"><a href="checkout.jsp" class="btn_payment">Thanh toán</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Content-->

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
<!--    Script-->
<script src="js/jquery-3.6.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="js/slideShow.js"></script>

</body>
</html>
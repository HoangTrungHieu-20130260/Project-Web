<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.Model.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.Service.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.Controller.AddToCart" %>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

</head>
<body>
<!--    Begin Header-->
<jsp:include page="header.jsp"></jsp:include>
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
            <div id="products">
            </div>
            <div class="total_price">
                <div id="total_contain" class="subtotal cf">
                    <div class="total_contain">
                        <ul>
                            <li class="totalRow_P"><span class="label">Tổng cộng:</span><span
                                    class="value" id="totalBill">

                            </span></li>
                            <li class="totalRow"><span class="label">Chi phí vận chuyển:</span><span class="value">Miễn phí</span>
                            </li>
                            <li class="totalRow_V"><span class="label">Thuế VAT (10%):</span><span class="value" id="vatBill"></span>
                            </li>
                            <li class="totalRow_final"><span class="label">Thành tiền:</span><span class="value" id="sumBill"></span>
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
<style>
    #wrapper .container .cart .total_price div{
        flex-basis: 100%;
    }
    #wrapper .container .cart .total_price .subtotal{
        padding-left: 700px;
    }
</style>
<!--    Begin Footer-->
<jsp:include page="footer.jsp"></jsp:include>

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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
        integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="./js/cart.js"></script>
</body>
</html>
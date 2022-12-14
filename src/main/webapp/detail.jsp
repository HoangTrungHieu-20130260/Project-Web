<%@ page import="vn.edu.hcmuaf.fit.Model.Product" %>
<%@ page import="vn.edu.hcmuaf.fit.Service.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.Model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.Controller.AddToCart" %>
<%@ page import="vn.edu.hcmuaf.fit.Model.Cart" %>
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
    <jsp:include page="header.jsp"></jsp:include>
    <!--    End Header-->
    <!--    Begin Content-->
    <div id="content">
        <div class="container">
            <div class="row">
                <% ProductService productService = new ProductService();
                    String pid = (String) request.getParameter("pid");
                    Product product = productService.getProductDetail(Integer.parseInt(pid));%>
                <div class="col-lg-6 col-md-12 detail-img-product">
                    <img src="<%=product.getImg()%>" alt="">
                </div>
                <div class="col-lg-6 col-md-12 entry-summary">
                    <h1 class="entry-title"><%=product.getName()%></h1>
                    <div class="entry-rating">
                        <span class="star-rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </span>
                        <span class="review-rating">(36 ????nh gi?? t??? kh??ch h??ng)</span>
                    </div>
                    <%  String price = String.valueOf(product.getPrice());
                        String priceDisplay = "";
                        if (price.length() >6){
                            priceDisplay = price.substring(0, price.length() - 6) + "." + price.substring(price.length() - 6, price.length() - 3) + "." + price.substring(price.length() - 3);
                        }else {
                            priceDisplay = price.substring(0, price.length() - 6)  + price.substring(price.length() - 6, price.length() - 3) + "." + price.substring(price.length() - 3);
                        }
                    %>
                    <p class="entry-price"><%=priceDisplay%> <span class="entry-currency">VND</span></p>
                    <div class="product-details-short-description">
                        <h3>Th??ng tin chi ti???t s???n ph???m</h3>
                        <p>
                            <b><span>Th????ng hi???u:</span></b><span>&nbsp;&nbsp;<%=product.getBranch()%></span><br>
                            <b><span>Tr??nh tr???ng:</span></b><span>&nbsp;&nbsp;<%=(product.getAmount() >0) ? "C??n h??ng" : "H???t h??ng"%></span><br>
                            <b><span>Th???i h???n c???p ph??p:</span></b><span>&nbsp;&nbsp;1 N??m</span><br>
                            <b><span>S??? l?????ng thi???t b???:</span></b><span>&nbsp;&nbsp;<%=product.getDeviceNumber()%></span><br>
                            <b><span>Lo???i Ph????ng ti???n: </span></b><span>&nbsp;&nbsp;Key v?? T???i xu???ng ??? H?????ng d???n s??? ???????c g???i qua email cho b???n.</span><br>
                        </p>
                        <div class="category-product">
                            <p class="mb-0">
                                <b>S???n ph???m t????ng t???:&nbsp;&nbsp;</b>
                                <a href="product.jsp">Key Windows</a>
                            </p>
                        </div>
                        <form class="detail-add-product-to-cart">
                            <input type="number" name="quantity" min="1" step="1" value="1" readonly="readonly">
                            <button><a href="AddToCart?id=<%= product.getId()%>">Th??m v??o gi??? h??ng</a></button>
                        </form>
                        <style>
                            #content .entry-summary .detail-add-product-to-cart button a{
                                text-decoration: none;
                                color: white;
                            }
                        </style>
                    </div>
                </div>
                <div class="description">
                    <div class="tab">
                        <button class="tablinks" onclick="openSection(event, 'description_content')">M?? t???</button>
                        <button class="tablinks" onclick="openSection(event, 'rated_content')">????nh gi??</button>
                    </div>
                    <div class="tabcontent" id="description_content" role="tabpanel"
                         aria-labelledby="description_title">
                        <%=product.getDescription()%>
                    </div>
                    <div class="tabcontent" id="rated_content" role="tabpanel" aria-labelledby="rated_title" style="display: none">
                        <% User user = (User) request.getSession().getAttribute("user");
                            if (user!= null) {%>
                        <form>
                            <h3>????nh gi?? s???n ph???m</h3>
                            <textarea class="rate_input" placeholder="N???i dung"></textarea>
                            <button type="button">G???i</button>
                        </form>
                        <%} else {}%>
                        <div class="user_rate">
                            <div class="image_rate">
                                <img src="Admin/template/images/faces/face1.jpg" alt="">
                            </div>
                            <div class="info_rate">
                                <h4>Ng?? C??ng D??ng</h4>
                                <p>???? ????nh gi??: 25/10/2022</p>
                                <p>B??? office k??ch ho???t r???t nhanh ch??ng v?? s??? d???ng ???n ?????nh.</p>
                            </div>
                        </div>
                        <div class="user_rate">
                            <div class="image_rate">
                                <img src="Admin/template/images/faces/face10.jpg" alt="">
                            </div>
                            <div class="info_rate">
                                <h3>????o Kim Ng???c</h3>
                                <p>???? ????nh gi??: 12/10/2022</p>
                                <p>Key adobe photoshop r???t d??? k??ch ho???t v?? s??? d???ng.</p>
                            </div>
                        </div>
                        <div class="user_rate">
                            <div class="image_rate">
                                <img src="Admin/template/images/faces/face9.jpg" alt="">
                            </div>
                            <div class="info_rate">
                                <h3>Tr???n Thanh H???i</h3>
                                <p>???? ????nh gi??: 30/09/2022</p>
                                <p>B??? key windows 5 thi???t b??? d??ng cho gia ????nh qu?? l?? ti???t ki???m.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  End Content-->
    <!--    Begin Footer-->
    <jsp:include page="footer.jsp"></jsp:include>
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
<script src="js/slideShow.js"></script>
</div>
</body>
</html>
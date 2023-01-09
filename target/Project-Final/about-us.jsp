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
                             <span class="amount-cart"><%=AddToCart.carts.size()%></span>
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
    <jsp:include page="header.jsp"></jsp:include>
    <!--    End Header-->
    <div id="content">
        <!--    Begin About-us-->
        <div class="about-us container">
            <div class="content-left text-center">
                <h1>HẠC KEY</h1>
                <h2>Chuyên cung Key bản quyền windows và <br> phần các mềm văn phòng chuyên nghiệp</h2>
                <h3>Hạc Key xin chào quý khách!</h3>
                <P>Tại đây Hạc Key chuyên cung cấp bản quyền Windows và các phần mềm Văn phòng khác. Với giá cả phải
                    chăng mà vẫn đảm bảo chất lượng sản phẩm, cùng với chế độ bảo hành và chăm sóc khách hàng tận
                    tình. Hạc Key tự tin sẽ làm cho bạn hài lòng ngay từ lần mua hàng đầu tiên!
                    <br><br>
                    Hạc Key hân hạnh được phục vụ Quý khách!!</P>
            </div>

            <div class="content-main">
                <div class="content-main-card">
                    <div class="content-main-card-icon yellow">
                        <i class="fa-brands fa-aws"></i>
                    </div>
                    <div class="content-main-card-content">
                        <p>Luôn sẵn sàng trợ giúp khách hàng trước khi mua hàng, trong quá trình mua hàng và ngay cả
                            sau khi mua hàng. Hạc Key hiểu rằng giá trị thực sự được tạo ra không chỉ được ở chất
                            lượng của sản phẩm mà còn là cả quá trình chăm sóc khách hàng trước và sau khi mua hàng.
                            Vì vậy Hạc Key luôn lắng nghe và hỗ trợ hết mình khi khách hàng có nhu cầu.</p>
                    </div>
                </div>
                <div class="content-main-card">
                    <div class="content-main-card-icon green">
                        <i class="fa-solid fa-gears"></i>
                    </div>
                    <div class="content-main-card-content">
                        <p>Sau khi các giao dịch được yêu cầu hoàn tất, Hạc Key sẽ gửi các sản phẩm kỹ thuật số
                            cho khách hàng gần như ngay lập tức. Chúng tôi luôn đảm bảo rằng những hướng dẫn cụ
                            thể và chi tiết nhất sẽ đi kèm với sản phẩm mà bạn nhận được.</p>
                    </div>
                </div>
                <div class="content-main-card">
                    <div class="content-main-card-icon blue">
                        <i class="fa-solid fa-globe"></i>
                    </div>
                    <div class="content-main-card-content">
                        <p>Hạc Key tự tin rằng các sản phẩm phần mềm là 100% chính hãng. Với những ưu điểm không
                            thể phủ nhận, khách hàng sẽ có những trải nghiệm mua sắm trực tuyến tuyệt vời khi
                            lựa chọn mua hàng tại Hạc Key.</p>
                    </div>
                </div>
                <div class="content-main-card">
                    <div class="content-main-card-icon purple">
                        <i class="fa-solid fa-rocket"></i>
                    </div>
                    <div class="content-main-card-content">
                        <p>Chắc chắn rằng trong mỗi khách hàng khi tham khảo giá cả sản phẩm đều hoài nghi rằng
                            liệu giá rẻ có đảm bảo chất lượng sản phẩm hay không ??. Hạc Key xin cam kết rằng
                            phần mềm và sản phẩm đều là chính hãng. nếu khách hàng không hài lòng về chất lượng
                            sản phẩm hãy liên hệ với bộ phận hỗ trợ . Hạc Key sẽ khắc phục sự cố và đổi trả sản
                            phẩm theo yêu cầu của khách hàng.</p>
                    </div>
                </div>
            </div>

            <div class="content-aboutUs">
                <div class="content-aboutUs-img">
                    <img src="image/about_us-compressed.jpg" alt="">
                </div>
                <div class="content-aboutUs-right">
                    <h1>Về chúng tôi</h1>
                    <p>Với kinh nghiệm nhiều năm trên thị trường phầm mềm ở Việt Nam, Hạc Key hiểu được nhu cầu thị
                        yếu của thị trường và người sử dụng phần mềm. Để đưa ra một mức giá cả hợp lý đáp ứng đầy đủ
                        nhu cầu cần thiết cho người dùng cá nhân và tại các cơ quan.
                        Là một đối tác phân phối sản phẩm cho Microsoft. Hạc Key mang lại cho người dùng những sản
                        phẩm chính hãng chất lượng nhưng giá cả phải chăng phù hợp với mọi người.
                        <br/>
                        Hạc Key luôn sẵn sàng lắng nghe và phát triển cùng khách hàng! Và hãy liên hệ chúng tôi nếu
                        bạn cần giúp đỡ!
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- End About-us-->
    <!--    Begin Footer-->
    <jsp:include page="footer.jsp"></jsp:include>
    <!--    End Footer-->
</div>
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

</div>
</body>
</html>
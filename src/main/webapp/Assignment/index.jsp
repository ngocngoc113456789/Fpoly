<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>ABC News - Tin nóng mỗi ngày</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <link rel="stylesheet" href="Css/Style.css">
</head>
<body>

<!-- Header -->
<header class="site-header">
    <div class="container">
        <div class="logo">ABC <span>News</span></div>
        <nav class="menu">
            <a href="index.jsp" class="active">Trang chủ</a>
            <a href="news_list.jsp?type=giaoduc">Giáo dục</a>
            <a href="news_list.jsp?type=suckhoe">Sức khỏe</a>
            <a href="news_list.jsp?type=doisong">Đời sống</a>
        </nav>
        <div class="header-actions">
            <input type="text" placeholder="Tìm kiếm..." class="search-bar">
            <button onclick="showModal('login-modal')" class="login-btn">Đăng nhập</button>
            <button onclick="showModal('register-modal')" class="register-btn">Đăng ký</button>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="container-3col">

        <!-- Left Column -->
        <section class="left-col">
            <article class="news-item">
                <img src="https://picsum.photos/id/1050/300/200" alt="Giáo dục">
                <div class="news-content">
                    <h3><a href="#">Bộ GD công bố phương án thi THPT 2026</a></h3>
                    <p>Phương án thi mới sẽ áp dụng từ năm 2026 với nhiều thay đổi về hình thức và nội dung thi...</p>
                    <span class="news-meta">Ngày đăng: 05/10/2025</span>
                </div>
            </article>
            <article class="news-item">
                <img src="https://picsum.photos/id/1055/300/200" alt="Sức khỏe">
                <div class="news-content">
                    <h3><a href="#">Cảnh báo dịch cúm lan rộng tại miền Bắc</a></h3>
                    <p>Sở Y tế khuyến cáo người dân đeo khẩu trang và hạn chế đến nơi đông người...</p>
                    <span class="news-meta">Ngày đăng: 05/10/2025</span>
                </div>
            </article>
        </section>

        <!-- Center Column -->
        <section class="center-col">
            <h2>Tin nổi bật hôm nay</h2>
            <article class="featured">
                <img src="https://picsum.photos/id/1060/500/300" alt="Sự kiện lớn">
                <div class="featured-content">
                    <h3><a href="#">Lũ lớn tại miền Trung gây thiệt hại nặng</a></h3>
                    <p>Hàng ngàn ngôi nhà bị ngập sâu, giao thông chia cắt, người dân cần cứu trợ khẩn cấp...</p>
                    <span class="news-meta">Ngày đăng: 05/10/2025</span>
                </div>
            </article>
            <article class="news-item">
                <img src="https://picsum.photos/id/1061/400/250" alt="Đời sống">
                <div class="news-content">
                    <h3><a href="#">Giá xăng dầu trong nước giảm mạnh</a></h3>
                    <p>Giá xăng RON95 giảm hơn 800 đồng/lít, mang lại nhiều lợi ích cho người tiêu dùng...</p>
                    <span class="news-meta">Ngày đăng: 05/10/2025</span>
                </div>
            </article>
        </section>

        <!-- Right Column -->
        <aside class="right-col">
            <div class="box newsletter">
                <h3>Đăng ký nhận bản tin</h3>
                <p>Để lại email để nhận thông báo tin mới hàng ngày.</p>
                <form action="subscribe" method="post">
                    <input type="email" name="email" placeholder="Email của bạn" required>
                    <button type="submit">Đăng ký</button>
                </form>
            </div>

            <div class="box">
                <h3>Tin xem nhiều</h3>
                <ul>
                    <li><a href="#">10 mẹo chăm sóc sức khỏe mùa lạnh</a></li>
                    <li><a href="#">Lịch cúp điện toàn quốc tháng 10</a></li>
                    <li><a href="#">Khám phá ẩm thực chay vùng miền</a></li>
                </ul>
            </div>

            <div class="box">
                <h3>Tin mới nhất</h3>
                <ul>
                    <li><a href="#">Khởi công tuyến metro số 2 tại TP.HCM</a></li>
                    <li><a href="#">Thị trường chứng khoán phục hồi nhẹ</a></li>
                    <li><a href="#">Tăng cường kiểm soát an toàn thực phẩm</a></li>
                </ul>
            </div>

            <div class="box">
                <h3>Tin đã xem</h3>
                <ul>
                    <li><a href="#">Thực hư thông tin thịt heo nhiễm bệnh</a></li>
                    <li><a href="#">Bí quyết ôn thi đại học hiệu quả</a></li>
                </ul>
            </div>
        </aside>
    </div>
</div>

<!-- Footer -->
<footer class="site-footer">
    <div class="container">
        <p>&copy; 2025 ABC News. Một sản phẩm thực tập Java Web.</p>
        <p>Liên hệ: abcnews@gmail.com | Hotline: 0987 654 321</p>
    </div>
</footer>

</body>
</html>

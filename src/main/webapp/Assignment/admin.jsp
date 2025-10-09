
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="ABC News - Trang quản trị hệ thống.">
    <meta name="keywords" content="quản trị, người dùng, loại tin, tin tức, ABC News">
    <meta name="author" content="ABC News">
    <title>ABC News - Trang Quản Trị</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Open+Sans:wght@400;600&display=swap">
       <link rel="stylesheet" href="Css/Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <!-- Header -->
    <header class="site-header">
        <div class="container">
            <div class="logo">ABC <span>News</span></div>
            <nav class="menu">
                <a href="index.jsp">Trang chủ</a>
                <a href="news_list.jsp?type=vanhoa">Văn hóa</a>
                <a href="news_list.jsp?type=phapluat">Pháp luật</a>
                <a href="news_list.jsp?type=thethao">Thể thao</a>
                <a href="admin.jsp" class="active">Quản trị</a>
                
            </nav>
            <div class="header-actions">
                <input type="text" placeholder="Tìm kiếm..." class="search-bar">
                <span class="user-info">Xin chào, Quản trị <%= session.getAttribute("user") != null ? session.getAttribute("user") : "Admin" %></span>
                <a href="logout.jsp" class="logout-btn">Đăng xuất</a>
            </div>
        </div>
    </header>


    <!-- Main Content -->
    <div class="container">
        <div class="container-3col">
            <!-- Left Column: Recent News -->
            <section class="left-col">
                <h3>Tin tức gần đây</h3>
                <article class="news-item">
                    <img src="https://picsum.photos/id/1015/300/200" alt="Tin AI">
                    <div class="news-content">
                        <h4><a href="#">Công nghệ AI thay đổi cuộc sống</a></h4>
                        <p>Trí tuệ nhân tạo ngày càng ảnh hưởng đến mọi lĩnh vực từ giáo dục đến y tế...</p>
                        <span class="news-meta">Đăng ngày: 28/09/2025</span>
                    </div>
                </article>
                <article class="news-item">
                    <img src="https://picsum.photos/id/1011/300/200" alt="Tin Thể thao">
                    <div class="news-content">
                        <h4><a href="#">Tuyển Việt Nam thắng đậm trong trận giao hữu</a></h4>
                        <p>Đội tuyển Việt Nam đã thể hiện phong độ xuất sắc với chiến thắng 4-0...</p>
                        <span class="news-meta">Đăng ngày: 28/09/2025</span>
                    </div>
                </article>
            </section>

            <!-- Center Column: Admin Dashboard -->
            <section class="center-col">
                <div class="admin-banner">
                    <h2>Trung tâm quản trị ABC News</h2>
                </div>
                <div class="admin-stats">
                    <div class="stat-box">
                        <i class="fas fa-newspaper"></i>
                        <h4>150</h4>
                        <p>Bài viết</p>
                    </div>
                    <div class="stat-box">
                        <i class="fas fa-users"></i>
                        <h4>25</h4>
                        <p>Người dùng</p>
                    </div>
                    <div class="stat-box">
                        <i class="fas fa-eye"></i>
                        <h4>10,000</h4>
                        <p>Lượt xem</p>
                    </div>
                </div>
                <h2>Quản trị hệ thống</h2>
                <div class="admin-actions">
                    <a href="manage_users.jsp" class="admin-btn"><i class="fas fa-user-cog"></i> Quản lý người dùng</a>
                    <a href="manage_categories.jsp" class="admin-btn"><i class="fas fa-tags"></i> Quản lý loại tin</a>
                    <a href="manage_all_news.jsp" class="admin-btn"><i class="fas fa-newspaper"></i> Quản lý tất cả tin tức</a>
                </div>
            </section>

            <!-- Right Column: Sidebar -->
            <aside class="right-col">
                <div class="box">
                    <h3>Hoạt động gần đây</h3>
                    <ul>
                        <li><span class="number">1</span><a href="#">Nguyễn Văn A đăng tin mới</a></li>
                        <li><span class="number">2</span><a href="#">Trần Thị B sửa tin</a></li>
                        <li><span class="number">3</span><a href="#">Admin thêm loại tin mới</a></li>
                    </ul>
                </div>
                <div class="box">
                    <h3>Thông tin hệ thống</h3>
                    <p><strong>Cập nhật lần cuối:</strong> <span id="last-updated">28/09/2025 16:42</span></p>
                    <p><strong>Phiên bản:</strong> 1.0.0</p>
                </div>
            </aside>
        </div>
    </div>

    <!-- Footer -->
    <footer class="site-footer">
        <div class="container">
            <p>&copy; 2025 ABC News. All rights reserved.</p>
            <div class="social-links">
                <a href="#">Facebook</a> | <a href="#">Twitter</a> | <a href="#">Instagram</a>
            </div>
            <p>Liên hệ: contact@abcnews.vn | Hotline: 0123 456 789</p>
        </div>
    </footer>

    <script>
        // Cập nhật thời gian thực
        function updateLastUpdated() {
            const now = new Date();
            const options = { 
                year: 'numeric', 
                month: '2-digit', 
                day: '2-digit', 
                hour: '2-digit', 
                minute: '2-digit', 
                hour12: false 
            };
            document.getElementById('last-updated').textContent = now.toLocaleString('vi-VN', options).replace(',', '');
        }
        setInterval(updateLastUpdated, 60000); 
        updateLastUpdated();

       
        document.querySelectorAll('.admin-btn, .logout-btn').forEach(btn => {
            btn.classList.add('fade-in');
        });
    </script>
</body>
</html>

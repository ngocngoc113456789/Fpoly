<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="ABC News - Quản lý tất cả tin tức.">
    <meta name="keywords" content="quản lý tin tức, quản trị, ABC News">
    <meta name="author" content="ABC News">
    <title>ABC News - Quản lý tất cả tin tức</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Open+Sans:wght@400;600&display=swap">
    <link rel="stylesheet" href="Css/Style.css">
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
                <span class="user-info">Xin chào, Quản trị <%= session.getAttribute("user") != null ? session.getAttribute("user") : "Admin" %></span>
                <a href="logout.jsp" class="logout-btn">Đăng xuất</a>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <section class="center-col">
            <h2>Quản lý tất cả tin tức</h2>
            <div class="action-bar">
                <a href="edit_news.jsp" class="add-news-btn">Thêm tin mới</a>
            </div>
            <table class="news-table">
                <thead>
                    <tr>
                        <th>Tiêu đề</th>
                        <th>Loại tin</th>
                        <th>Phóng viên</th>
                        <th>Ngày đăng</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Công nghệ AI thay đổi cuộc sống</td>
                        <td>Công nghệ</td>
                        <td>Nguyễn Văn A</td>
                        <td>28/09/2025</td>
                        <td>
                            <a href="edit_news.jsp?id=1" class="edit-btn">Sửa</a>
                            <a href="delete_news.jsp?id=1" class="delete-btn" onclick="return confirm('Bạn có chắc muốn xóa tin này?')">Xóa</a>
                        </td>
                    </tr>
                    <tr>
                        <td>Lễ hội truyền thống tại Huế</td>
                        <td>Văn hóa</td>
                        <td>Trần Thị B</td>
                        <td>28/09/2025</td>
                        <td>
                            <a href="edit_news.jsp?id=2" class="edit-btn">Sửa</a>
                            <a href="delete_news.jsp?id=2" class="delete-btn" onclick="return confirm('Bạn có chắc muốn xóa tin này?')">Xóa</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>
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
</body>
</html>
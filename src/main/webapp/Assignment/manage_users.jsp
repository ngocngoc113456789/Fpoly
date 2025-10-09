<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="ABC News - Quản lý người dùng.">
    <meta name="keywords" content="quản lý người dùng, quản trị, ABC News">
    <meta name="author" content="ABC News">
    <title>ABC News - Quản lý người dùng</title>
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
            <h2>Quản lý người dùng</h2>
            <div class="action-bar">
                <a href="#add-user" class="add-news-btn" onclick="showModal('add-user-modal')">Thêm người dùng</a>
            </div>
            <table class="news-table">
                <thead>
                    <tr>
                        <th>Tên</th>
                        <th>Email</th>
                        <th>Vai trò</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nguyễn Văn A</td>
                        <td>nguyenvana@abcnews.vn</td>
                        <td>Phóng viên</td>
                        <td>
                            <a href="#edit-user" class="edit-btn" onclick="showModal('edit-user-modal')">Sửa</a>
                            <a href="delete_user.jsp?id=1" class="delete-btn" onclick="return confirm('Bạn có chắc muốn xóa người dùng này?')">Xóa</a>
                        </td>
                    </tr>
                    <tr>
                        <td>Trần Thị B</td>
                        <td>tranb@abcnews.vn</td>
                        <td>Quản trị</td>
                        <td>
                            <a href="#edit-user" class="edit-btn" onclick="showModal('edit-user-modal')">Sửa</a>
                            <a href="delete_user.jsp?id=2" class="delete-btn" onclick="return confirm('Bạn có chắc muốn xóa người dùng này?')">Xóa</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>
    </div>

    <!-- Add User Modal -->
    <div id="add-user-modal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal('add-user-modal')">&times;</span>
            <h2>Thêm người dùng</h2>
            <form action="add_user" method="post">
                <div class="form-group">
                    <label for="fullName">Họ và tên</label>
                    <input type="text" id="fullName" name="fullName" placeholder="Nhập họ và tên" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Nhập email" required>
                </div>
                <div class="form-group">
                    <label for="password">Mật khẩu</label>
                    <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" required>
                </div>
                <div class="form-group">
                    <label for="role">Vai trò</label>
                    <select id="role" name="role" required>
                        <option value="reporter">Phóng viên</option>
                        <option value="admin">Quản trị</option>
                    </select>
                </div>
                <button type="submit" class="submit-btn">Thêm người dùng</button>
            </form>
        </div>
    </div>

    <!-- Edit User Modal -->
    <div id="edit-user-modal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal('edit-user-modal')">&times;</span>
            <h2>Sửa người dùng</h2>
            <form action="edit_user" method="post">
                <input type="hidden" name="userId" value="1">
                <div class="form-group">
                    <label for="edit-fullName">Họ và tên</label>
                    <input type="text" id="edit-fullName" name="fullName" placeholder="Nhập họ và tên" required>
                </div>
                <div class="form-group">
                    <label for="edit-email">Email</label>
                    <input type="email" id="edit-email" name="email" placeholder="Nhập email" required>
                </div>
                <div class="form-group">
                    <label for="edit-role">Vai trò</label>
                    <select id="edit-role" name="role" required>
                        <option value="reporter">Phóng viên</option>
                        <option value="admin">Quản trị</option>
                    </select>
                </div>
                <button type="submit" class="submit-btn">Lưu thay đổi</button>
            </form>
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
        function showModal(modalId) {
            document.getElementById(modalId).style.display = 'flex';
        }

        function closeModal(modalId) {
            document.getElementById(modalId).style.display = 'none';
        }
    </script>
</body>
</html>
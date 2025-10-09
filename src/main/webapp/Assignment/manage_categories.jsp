<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="ABC News - Quản lý loại tin.">
    <meta name="keywords" content="quản lý loại tin, quản trị, ABC News">
    <meta name="author" content="ABC News">
    <title>ABC News - Quản lý loại tin</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Open+Sans:wght@400;600&display=swap">
    <link rel="stylesheet" href="css/style.css">
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
            <h2>Quản lý loại tin</h2>
            <div class="action-bar">
                <a href="#add-category" class="add-news-btn" onclick="showModal('add-category-modal')">Thêm loại tin</a>
            </div>
            <table class="news-table">
                <thead>
                    <tr>
                        <th>Tên loại tin</th>
                        <th>Mô tả</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Văn hóa</td>
                        <td>Tin tức về văn hóa và lễ hội</td>
                        <td>
                            <a href="#edit-category" class="edit-btn" onclick="showModal('edit-category-modal')">Sửa</a>
                            <a href="delete_category.jsp?id=1" class="delete-btn" onclick="return confirm('Bạn có chắc muốn xóa loại tin này?')">Xóa</a>
                        </td>
                    </tr>
                    <tr>
                        <td>Pháp luật</td>
                        <td>Tin tức về pháp luật và an ninh</td>
                        <td>
                            <a href="#edit-category" class="edit-btn" onclick="showModal('edit-category-modal')">Sửa</a>
                            <a href="delete_category.jsp?id=2" class="delete-btn" onclick="return confirm('Bạn có chắc muốn xóa loại tin này?')">Xóa</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>
    </div>

    <!-- Add Category Modal -->
    <div id="add-category-modal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal('add-category-modal')">&times;</span>
            <h2>Thêm loại tin</h2>
            <form action="add_category" method="post">
                <div class="form-group">
                    <label for="categoryName">Tên loại tin</label>
                    <input type="text" id="categoryName" name="categoryName" placeholder="Nhập tên loại tin" required>
                </div>
                <div class="form-group">
                    <label for="description">Mô tả</label>
                    <textarea id="description" name="description" rows="4" placeholder="Nhập mô tả"></textarea>
                </div>
                <button type="submit" class="submit-btn">Thêm loại tin</button>
            </form>
        </div>
    </div>

    <!-- Edit Category Modal -->
    <div id="edit-category-modal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal('edit-category-modal')">&times;</span>
            <h2>Sửa loại tin</h2>
            <form action="edit_category" method="post">
                <input type="hidden" name="categoryId" value="1">
                <div class="form-group">
                    <label for="edit-categoryName">Tên loại tin</label>
                    <input type="text" id="edit-categoryName" name="categoryName" placeholder="Nhập tên loại tin" required>
                </div>
                <div class="form-group">
                    <label for="edit-description">Mô tả</label>
                    <textarea id="edit-description" name="description" rows="4" placeholder="Nhập mô tả"></textarea>
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
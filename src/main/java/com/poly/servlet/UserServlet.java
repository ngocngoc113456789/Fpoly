package com.poly.servlet; 

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/user1")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        
        // Gửi chuỗi message sang JSP
        req.setAttribute("message", "Welcome to FPT Polytechnic");

        // Tạo map chứa thông tin user
        Map<String, Object> map = new HashMap<>();
        map.put("fullname", "Nguyễn Văn Tèo");
        map.put("gender", "Male");
        map.put("country", "Việt Nam");

        // Đưa map vào request scope
        req.setAttribute("user", map);

        // Chuyển tiếp sang page.jsp
        req.getRequestDispatcher("/views/page1.jsp").forward(req, resp);
    }
}
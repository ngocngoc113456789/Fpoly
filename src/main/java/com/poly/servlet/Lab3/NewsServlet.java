package com.poly.servlet.Lab3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/news")
public class NewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, Object> map = new HashMap<>();
        map.put("title", "Tiêu đề bản tin");
        map.put("content", "Nội dung bản tin thường rất dài, đây chỉ là một ví dụ minh họa để kiểm tra việc cắt chuỗi sang JSP. " +
                "Nếu đoạn này dài hơn 100 ký tự thì JSP sẽ tự động cắt bớt.");

        req.setAttribute("item", map);
        req.getRequestDispatcher("/lab3/news.jsp").forward(req, resp);
    }
}
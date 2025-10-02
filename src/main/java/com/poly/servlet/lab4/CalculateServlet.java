package com.poly.servlet.lab4;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/calculate/add", "/calculate/sub"})
public class CalculateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("message", "Nhập số và chọn phép tính!");
        req.getRequestDispatcher("/lab4/calculate.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            double a = Double.parseDouble(req.getParameter("a"));
            double b = Double.parseDouble(req.getParameter("b"));
            String path = req.getServletPath();
            double c;
            if (path.endsWith("/add")) {
                c = a + b;
                req.setAttribute("message", a + " + " + b + " = " + c);
            } else {
                c = a - b;
                req.setAttribute("message", a + " - " + b + " = " + c);
            }
        } catch (Exception e) {
            req.setAttribute("message", "Vui lòng nhập số hợp lệ!");
        }
        req.getRequestDispatcher("/lab4/calculate.jsp").forward(req, resp);
    }
}
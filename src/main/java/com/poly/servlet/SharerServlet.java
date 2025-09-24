package com.poly.servlet;

import java.io.IOException;
import java.util.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/page")
public class SharerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
                req.setAttribute("message", "Welcome to FPT Polytechnic!");
        req.setAttribute("now", new Date());
        req.getRequestDispatcher("/Views/page.jsp").forward(req, resp);
    }
}
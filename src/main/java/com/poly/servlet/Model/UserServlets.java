package com.poly.servlet.model;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.poly.servlet.model.user;

@WebServlet("/users")
public class UserServlets extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {

        req.setAttribute("message", "Welcome to FPT Polytechnic");

        user bean = new user();
        bean.setFullname("Nguyễn Văn Tèo");
        bean.setGender(true);  
        bean.setCountry("VN");

        req.setAttribute("user", bean);

        req.getRequestDispatcher("/views/page2.jsp").forward(req, resp);
    }
}
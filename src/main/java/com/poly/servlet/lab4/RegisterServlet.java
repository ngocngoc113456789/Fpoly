package com.poly.servlet.lab4;

import java.io.IOException;
import java.util.Arrays;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/lab4/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String gender   = req.getParameter("gender");
        String married  = req.getParameter("married"); 
        String country  = req.getParameter("country");
        String[] hobbies = req.getParameterValues("hobbies");
        String note = req.getParameter("note");

        
        System.out.println("Username: " + username);
        System.out.println("Password: " + password);
        System.out.println("Gender: " + gender);
        System.out.println("Married: " + (married != null ? "Yes" : "No"));
        System.out.println("Country: " + country);
        System.out.println("Hobbies: " + Arrays.toString(hobbies));
        System.out.println("Note: " + note);

        
        req.setAttribute("message", "Đăng ký thành công cho user: " + username);
        req.getRequestDispatcher("/lab4/register.jsp").forward(req, resp);
    }
}
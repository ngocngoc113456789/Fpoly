package com.poly.servlet.Lab3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet("/item")
public class ItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        Map<String, Object> map = new HashMap<>();
        map.put("name", "iPhone 2024");
        map.put("price", 12345.678);
        map.put("date", new Date());

        req.setAttribute("item", map);

        req.getRequestDispatcher("/lab3/item.jsp").forward(req, resp);
    }
}
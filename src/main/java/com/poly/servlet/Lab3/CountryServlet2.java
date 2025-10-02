package com.poly.servlet.Lab3;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/country1")
public class CountryServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {

        List<Country> list = List.of(
            new Country("VN", "Việt Nam"),
            new Country("US", "United States"),
            new Country("CN", "China")
        );

        req.setAttribute("countries", list);
        req.getRequestDispatcher("/lab3/country2.jsp").forward(req, resp);
    }
}
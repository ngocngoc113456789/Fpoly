package com.poly.servlet;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/poly/servlet")
public class MyServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String method = req.getMethod();
		System.out.println(method);
	}
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		System.out.println("GET");
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
				System.out.println("POST");
			}
}

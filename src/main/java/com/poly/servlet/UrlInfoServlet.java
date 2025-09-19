package com.poly.servlet;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/urlinfo")
public class UrlInfoServlet extends HttpServlet  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		out.println("<h2> Thông tin UR L</h2>");
        out.println("URL: " + req.getRequestURL() + "<br>");
        out.println("URI: " + req.getRequestURI() + "<br>");
        out.println("QueryString: " + req.getQueryString() + "<br>");
        out.println("ServletPath: " + req.getServletPath() + "<br>");
        out.println("ContextPath: " + req.getContextPath() + "<br>");
        out.println("PathInfo: " + req.getPathInfo() + "<br>");
        out.println("Method: " + req.getMethod() + "<br>");
		
	}

}

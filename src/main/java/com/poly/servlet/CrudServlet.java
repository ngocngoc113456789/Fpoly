package com.poly.servlet;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/crud/create", "/crud/update/*", "/crud/delete","/crud/edit/2024"})

public class CrudServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		
		resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
		String uri = req.getRequestURI();
		
		if (uri.contains("/create")) {
            out.println("Bạn đang gọi chức năng TẠO MỚI");
        } else if (uri.contains("/update")) {
            out.println("Bạn đang gọi chức năng CẬP NHẬT");
        } else if (uri.contains("/delete")) {
            out.println("Bạn đang gọi chức năng XÓA");
        } else if (uri.contains("/edit/2024")) {
            out.println("Bạn đang gọi chức năng CHỈNH SỬA với năm 2024");
        } else {
            out.println("Không tìm thấy chức năng!");
        }
	


	}
}

package com.poly.servlet.lab4;

import java.io.File;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig
@WebServlet("/upload")
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/lab4/upload.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            Part photo = req.getPart("photo");
            String filename = photo.getSubmittedFileName();

            String path = getServletContext().getRealPath("/static/file");
            File dir = new File(path);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            File file = new File(dir, filename);
            photo.write(file.getAbsolutePath());

            req.setAttribute("message", "Upload thành công!");
            req.setAttribute("filename", filename);

        } catch (Exception e) {
            req.setAttribute("message", "Upload thất bại: " + e.getMessage());
        }

        req.getRequestDispatcher("/lab4/upload.jsp").forward(req, resp);
    }
}
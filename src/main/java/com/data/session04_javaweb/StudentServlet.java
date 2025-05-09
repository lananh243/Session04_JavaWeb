package com.data.session04_javaweb;import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "StudentServlet", value = "/StudentServlet")
public class StudentServlet extends HttpServlet {
    private List<Student> students = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        // khoi tao danh sach student
        students.add(new Student(1, "Nguyen Ngoc", 6.5, "HN"));
        students.add(new Student(2, "Tran Nam", 9.5, "HP"));
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("students", students);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {}

    public void destroy() {
    }
}
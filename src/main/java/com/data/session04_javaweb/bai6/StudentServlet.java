package com.data.session04_javaweb.bai6;import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "StudentServlet", value = "/bt6")
public class StudentServlet extends HttpServlet {
    private List<Student> students = new ArrayList<>();

    public void init() {
        students.add(new Student(1, "Mai Trang", 18, 6.7));
        students.add(new Student(2, "Minh Nguyệt", 20, 7.6));
        students.add(new Student(3, "Liên My", 21, 8.9));
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
       request.setAttribute("students", students);
       request.getRequestDispatcher("listStudent.jsp").forward(request, response);
    }

    public void destroy() {
    }
}
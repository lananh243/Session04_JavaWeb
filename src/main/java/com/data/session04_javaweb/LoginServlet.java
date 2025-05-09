package com.data.session04_javaweb;import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals("admin") && password.equals("123456")) {
            request.setAttribute("message", "Đăng nhập thành công! Chào mừng, " +username+ "!");
        } else {
            request.setAttribute("error", "Đăng nhập thất bại! Tên người dùng hoặc mật khẩu không đúng");

        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    public void destroy() {
    }
}
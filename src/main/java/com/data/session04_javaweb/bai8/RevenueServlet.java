package com.data.session04_javaweb.bai8;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "RevenueServlet", value = "/bt8")
public class RevenueServlet extends HttpServlet {
    List<Revenue> revenues =  new ArrayList<>();

    @Override
    public void init() throws ServletException {
        revenues.add(new Revenue("Tháng 5", 6000));
        revenues.add(new Revenue("Tháng 7", 12000));
        revenues.add(new Revenue("Tháng 3", 5000));
        revenues.add(new Revenue("Tháng 11", 15000));
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
       request.setAttribute("revenues", revenues);
       request.getRequestDispatcher("totalRevenue.jsp").forward(request, response);
    }

    public void destroy() {
    }
}
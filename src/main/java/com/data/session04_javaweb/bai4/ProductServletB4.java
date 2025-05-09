package com.data.session04_javaweb.bai4;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "ProductServletB4", value = "/products-display")
public class ProductServletB4 extends HttpServlet {
    private List<Product> products = new ArrayList<>();

    public void init() {
        products.add(new Product(1, "Sản phẩm 01",null, "Mô tả sp 01"));
        products.add(new Product(2, "Sản phẩm 02", 3000.0f, "Mô tả sp 02"));
        products.add(new Product(3, "Sản phẩm 03", 5000.0f, "Mô tả sp 03"));
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("products", products);
        request.getRequestDispatcher("display.jsp").forward(request, response);
    }

    public void destroy() {
    }
}
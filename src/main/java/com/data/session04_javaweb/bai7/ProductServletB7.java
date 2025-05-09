package com.data.session04_javaweb.bai7;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "ProductServletB7", value = "/bt7")
public class ProductServletB7 extends HttpServlet {
    private List<Product> products = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        products.add(new Product(1, "Iphone15", 9000.0f));
        products.add(new Product(2, "Kim Cương", 8000.0f));
        products.add(new Product(3, "Vàng", 6000.0f));
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String minPrice = request.getParameter("minPrice");
        String maxPrice = request.getParameter("maxPrice");
        Product foundProduct = null;

        if (minPrice != null && maxPrice != null) {
            try {
                int min = Integer.parseInt(minPrice);
                int max = Integer.parseInt(maxPrice);
                for (Product p : products) {
                    if (p.getPrice() >= min && p.getPrice() <= max) {
                        foundProduct = p;
                        break;
                    }
                }
            } catch (NumberFormatException e) {}
        }
        request.setAttribute("foundProduct", foundProduct);
        request.getRequestDispatcher("filterPrice.jsp").forward(request, response);
    }

    public void destroy() {
    }
}
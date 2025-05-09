package com.data.session04_javaweb.bai5;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "ProductServletB5", value = "/bt5")
public class ProductServletB5 extends HttpServlet {
    private List<Product> products = new ArrayList<>();

    public void init() {
        products.add(new Product(1, "Iphone 15", 3000.0f, "Sản phẩm mới về"));
        products.add(new Product(2, "SamSung galaxy 21", 2900.0f, "Thế hệ đột phá"));
        products.add(new Product(3, "Đồng hồ thụy sỹ", 15000.0f, "Đẹp khỏi chê"));
        products.add(new Product(4, "Tai nghe aripods", 2000.0f, "Càng nghe càng thích"));
        products.add(new Product(5, "Laptop lenovo", 3000.0f, "Đổi trả hàng trong vòng 30 ngày miễn phí"));
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String searchId = request.getParameter("searchId");
        Product foundProduct = null;

        if (searchId != null) {
            try {
                int id = Integer.parseInt(searchId);
                for (Product p : products) {
                    if (p.getId() == id) {
                        foundProduct = p;
                        break;
                    }
                }
            } catch (NumberFormatException e) {}
        }
        request.setAttribute("foundProduct", foundProduct);
        request.getRequestDispatcher("formSearch.jsp").forward(request, response);
    }

    public void destroy() {
    }
}
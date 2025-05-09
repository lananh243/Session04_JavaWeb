package com.data.session04_javaweb.bai1;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "ProductServlet", value = "/product-list")
public class ProductServlet extends HttpServlet {
    private List<Product> listProduct = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        listProduct.add(new Product(1, "Iphone 15", 3000.0, "Sản phẩm mới về"));
        listProduct.add(new Product(2, "SamSung galaxy 21", 2900.0, "Thế hệ đột phá"));
        listProduct.add(new Product(3, "Đồng hồ thụy sỹ", 15000.0, "Đẹp khỏi chê"));
        listProduct.add(new Product(4, "Tai nghe aripods", 2000.0, "Càng nghe càng thích"));
        listProduct.add(new Product(5, "Laptop lenovo", 3000.0, "Đổi trả hàng trong vòng 30 ngày miễn phí"));
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("listProduct", listProduct);
        request.getRequestDispatcher("productList.jsp").forward(request, response);
    }

    public void destroy() {
    }
}
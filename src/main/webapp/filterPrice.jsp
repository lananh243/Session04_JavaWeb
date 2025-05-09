<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/9/2025
  Time: 11:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="bt7" method="get">
        <label for="minPrice">Nhập giá tối thiểu</label>
        <input type="number" name="minPrice" id="minPrice">
        <br><br>
        <label for="maxPrice">Nhập giá tối đa</label>
        <input type="number" name="maxPrice" id="maxPrice">
        <br><br>
        <input type="submit" value="Lọc">
    </form>

    <c:choose>
        <c:when test="${not empty foundProduct}">
            <p>ID: <span class="font-semibold">${foundProduct.id}</span></p>
            <p>Name: <span class="font-semibold">${foundProduct.name}</span></p>
            <p>Price: <span class="font-semibold">${foundProduct.price}</span></p>
        </c:when>
        <c:otherwise>
            <h2>Không có sản phẩm nào trong khoảng giá này</h2>
        </c:otherwise>
    </c:choose>
</body>
</html>

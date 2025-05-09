<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/9/2025
  Time: 1:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h2>Danh sách sản phẩm</h2>
  <c:choose>
    <c:when test="${not empty products}">
      <table border="1">
        <thead>
        <tr>
          <th>ID</th>
          <th>Tên Sản Phẩm</th>
          <th>Giá</th>
          <th>Mô Tả</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
          <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>
              <c:choose>
                <c:when test="${not empty product.price}">
                  ${product.price}
                </c:when>
                <c:otherwise>
                  <span>Chưa có thông tin giá</span>
                </c:otherwise>
              </c:choose>
            </td>
            <td>${product.description}</td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </c:when>
    <c:otherwise>
      <p>Không có sản phẩm nào.</p>
    </c:otherwise>
  </c:choose>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Danh sách sản phẩm</h3>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Description</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="item" items="${listProduct}">
        <tr>
            <td>${item.id}</td>
            <td>${item.productName}</td>
            <td>${item.price}</td>
            <td>${item.description}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/9/2025
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body class="bg-gray-800 flex items-center justify-center h-screen">
<div class="bg-gray-900 p-8 rounded-lg shadow-lg w-96">
    <h1 class="text-white text-2xl font-bold mb-4 text-center">Product Details</h1>
    <form action="bt5" method="get" class="mb-4">
        <input type="text" name="searchId" placeholder="Enter product ID..." class="w-full p-2 mb-4 rounded-lg border border-gray-300">
        <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded-lg hover:bg-blue-600">Search</button>
    </form>

    <c:choose>
        <c:when test="${not empty foundProduct}">
            <p class="text-white">ID: <span class="font-semibold">${foundProduct.id}</span></p>
            <p class="text-white">Name: <span class="font-semibold">${foundProduct.name}</span></p>
            <p class="text-white">Price: <span class="font-semibold">${foundProduct.price != null ? foundProduct.price : 'Chưa có thông tin'}</span></p>
        </c:when>
        <c:otherwise>
            <h2 class="text-red-500 text-lg font-bold mt-4">Product not found</h2>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/9/2025
  Time: 12:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="flex items-center justify-center min-h-screen bg-gray-100">
    <div class="bg-white shadow-md rounded px-8 py-6 w-1/5 h-80">
        <h2 class="text-2xl font-bold text-center mb-6">Đăng Nhập</h2>
        <form>
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="username">Username:</label>
                <input type="text" id="username" name="username" class="border rounded w-full py-2 px-3 text-gray-700" required>
            </div>
            <div class="mb-6">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="password">Password:</label>
                <input type="password" id="password" name="password" class="border rounded w-full py-2 px-3 text-gray-700" required>
            </div>
            <div class="flex items-center justify-center">
                <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Đăng Nhập</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 11:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>Đăng Nhập</h3>

    <form action="LoginServlet" method="post">
        <label for="username">Username: </label>
        <input type="text" name="username" id="username">
        <br><br>
        <label for="password">Password: </label>
        <input type="password" name="password" id="password">
        <br><br>
        <input type="submit" value="Đăng nhập">
    </form>

    <h3>${message}</h3>

    <c:if test="${error}">
        <p style="color:red;">${error}</p>
    </c:if>
</body>
</html>

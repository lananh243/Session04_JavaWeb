<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/9/2025
  Time: 11:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Danh Sách Sinh Viên</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên</th>
                <th>Tuổi</th>
                <th>Điểm trung bình</th>
            </tr>
        </thead>
        <tbody>
        <c:set var="countAbove7" value="0" />
        <c:forEach var="item" items="${students}">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.age}</td>
                <td>${item.average}</td>
            </tr>
            <c:if test="${item.average > 7.0}">
                <c:set var="countAbove7" value="${countAbove7 + 1}" />
            </c:if>
        </c:forEach>
        </tbody>
    </table>

    <div class="mt-4 text-white">
        <p>Tổng số sinh viên có điểm trung bình lớn hơn 7.0 : <span class="font-bold">${countAbove7}</span></p>
    </div>
</body>
</html>

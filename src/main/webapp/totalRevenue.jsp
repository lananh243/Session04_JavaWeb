<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/9/2025
  Time: 12:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Tổng Doanh Thu</h1>
<table border="1">
    <thead>
        <tr>
            <th>Tháng</th>
            <th>Tổng doanh thu</th>
        </tr>
    </thead>
    <tbody>
    <c:set var="totalRevenue" value="0"/>
    <c:forEach var="item" items="${revenues}">
        <tr>
            <td>${item.month}</td>
            <td>${item.revenue}</td>
        </tr>
        <c:set var="totalRevenue" value="${totalRevenue + item.revenue}"/>
    </c:forEach>
    </tbody>
</table>
    <br><br>
    <b>Tổng doanh thu: ${totalRevenue}</b>
    <br><br>
<c:choose>
    <c:when test="${totalRevenue > 10000}">
        <b>Doanh thu đạt chỉ tiêu</b>
    </c:when>
    <c:otherwise>
        <b>Doanh thu không đạt chỉ tiêu</b>
    </c:otherwise>
</c:choose>
</body>
</html>

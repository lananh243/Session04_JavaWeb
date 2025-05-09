<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<h1>Trang chủ</h1>
<c:out value="lan anh" />
<%--c:if kiểm tra điều kiện r in ra--%>
<c:set var="diem" value="80"/>
<c:if test="${diem >= 80}"><br>
    <h4>HOC SINH GIOI</h4>
</c:if>
<c:if test="${diem < 80}">
    <h4>HOC SINH KHA</h4>
</c:if>
<c:set var="lever" value="7"/>
<c:choose>
    <c:when test="${lever >= 8}">
        <h4>LEVER MAX</h4>
    </c:when>
    <c:when test="${lever >= 6}">
        <h4>LEVER MEDIUM</h4>
    </c:when>
    <c:when test="${lever >= 5}">
        <h4>LEVER LOW</h4>
    </c:when>
</c:choose>

<h4>Quản lý sinh viên</h4>

<table border="1">
    <thead>
    <tr>
        <th>Id</th>
        <th>Họ tên</th>
        <th>Điểm</th>
        <th>Địa chỉ</th>
        <th>Học lực</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="item" items="${students}">
        <tr>
            <td>${item.id}</td>
            <td>${item.studentName}</td>
            <td>${item.score}</td>
            <td>${item.address}</td>

            <td>
                <c:choose>
                    <c:when test="${item.score >= 8}">
                        Giỏi
                    </c:when>
                    <c:when test="${item.score >= 6}">
                        Khá
                    </c:when>
                    <c:when test="${item.score >= 5}">
                        Trung Bình
                    </c:when>
                    <c:otherwise>
                        Yếu
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
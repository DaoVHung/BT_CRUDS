<%--
  Created by IntelliJ IDEA.
  User: GentMaker
  Date: 11/9/2022
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="stylesheet" href="CSS/Style.css">
    <title>Book List</title>
</head>
<body>

<h2>List Book In Store</h2>
<table border="1px">

    <thead>
    <tr>
        <th>ID</th>
        <th>Book Name</th>
        <th>Price</th>
        <th>AuThor</th>
        <th>Book Status</th>
        <th colspan="2">EDIT</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${listBook}" var="book">
        <tr>
            <td>${book.bookId}</td>
            <td>${book.bookName}</td>
            <td>${book.price}</td>
            <td>${book.author}</td>
            <td>
                <c:choose>
                    <c:when test="${book.bookStatus}">Hoat Dong</c:when>
                    <c:otherwise>KO Hoat Dong</c:otherwise>
                </c:choose>

            </td>
            <td>
                <a id="update" href="BookSevlet?bookId=${book.bookId}&&action=update"> Update </a>
            </td>
            <td>
                <a id="delete" href="BookSevlet?bookId=${book.bookId}&&action=delete"> Delete </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
    <tfoot>
    <tr>
        <td colspan="7">
            <a href="index.jsp"> Return Menu </a>
        </td>
    </tr>
    </tfoot>
</table>
<form id="t1" action="<%=request.getContextPath()%>/BookSevlet" method="POST">
    <table>
        <tr>
            <td>
                <input type="text" name="bookName">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Search" name="action">
            </td>
        </tr>
    </table>
</form>
</body>
</html>

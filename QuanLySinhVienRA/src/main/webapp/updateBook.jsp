<%--
  Created by IntelliJ IDEA.
  User: GentMaker
  Date: 11/9/2022
  Time: 9:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="CSS/Style.css">
<html>
<head>
    <title>SEARCH</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/BookSevlet" method="POST">
    <h1>Update Book</h1>

    <table border="1px">
        <tr>
            <td>Book ID</td>
            <td><input type="text" name="bookId" value="${updateBook.bookId}"></td>
        </tr>
        <tr>
            <td>Book Name</td>
            <td><input type="text" name="bookName" value="${updateBook.bookName}"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="text" name="price" value="${updateBook.price}"></td>
        </tr>
        <tr>
            <td>Author</td>
            <td><input type="text" name="author" value="${updateBook.author}"></td>
        </tr>
        <tr>
            <td>Status</td>
            <td><select name="bookStatus" id="Status">
                <option value="true">Hoat Dong</option>
                <option value="false">Ko Hoat Dong</option>
            </select></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Update" name="action"></td>
        </tr>
    </table>
</form>
</body>
</html>

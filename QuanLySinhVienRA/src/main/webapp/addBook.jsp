<%--
  Created by IntelliJ IDEA.
  User: GentMaker
  Date: 11/9/2022
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="CSS/Style.css">
    <title>Add Book</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/BookSevlet" method="POST">
    <h1>Creat Book</h1>
    <table border="1px">
        <tr>
            <td> Book Id</td>
            <td><input type="text" name="bookId"></td>
        </tr>
        <tr>
            <td>Book Name</td>
            <td><input type="text" name="bookName"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="text" name="price"></td>
        </tr>
        <tr>
            <td>Author</td>
            <td><input type="text" name="author"></td>
        </tr>
        <tr>
            <td>Status</td>
            <td><select name="Status" id="Status">
                <option value="true">Hoat Dong</option>
                <option value="false">KO Hoat Dong</option>
            </select></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="-Add-" name="action"></td>
        </tr>
        <tr>
            <td colspan="2">
                <a href="index.jsp"> Return Menu </a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>

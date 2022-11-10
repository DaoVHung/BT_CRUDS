<%--
  Created by IntelliJ IDEA.
  User: GentMaker
  Date: 11/9/2022
  Time: 9:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="CSS/Style.css">
    <title>Search BooK</title>
</head>
<body>
<h1>Nhập Tên Sách Muốn Tìm Kiếm</h1>
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

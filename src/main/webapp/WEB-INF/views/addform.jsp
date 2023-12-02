<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/17/2023
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table>
        <tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>저자:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>카테고리:</td><td><input type="text" name="category"/></td></tr>
        <tr><td>출판사:</td><td><input type="text" name="publisher"/></td></tr>
        <tr><td>대여여부:</td><td><input type="text" name="rentok"/></td></tr>
        <tr><td>ISBN:</td><td><input type="text" name="isbn"/></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>

</form>

</body>
</html>

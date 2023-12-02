<%@ page import="com.book.BookDAO" %>
<%@ page import="com.book.BookVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>


<h1>Edit Form</h1>
<%--@elvariable id="bookVO" type=""--%>
<form:form action="editok" method="post" modelAttribute="bookVO">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>제목:</td><td><form:input path="title"/></td></tr>
        <tr><td>저자:</td><td><form:input path="writer"/></td></tr>
        <tr><td>카테고리:</td><td><form:input path="category"/></td></tr>
        <tr><td>출판사:</td><td><form:input path="publisher"/></td></tr>
        <tr><td>대여여부:</td><td><form:input path="rentok"/></td></tr>
        <tr><td>ISBN:</td><td><form:input path="isbn"/></td></tr>
    </table>
    <input type="submit" value="수정"/>
    <input type="button" value="취소" onclick="history.back()"/>
</form:form>

</body>
</html>
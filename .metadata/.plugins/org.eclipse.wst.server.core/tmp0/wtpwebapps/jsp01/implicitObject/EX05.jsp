<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>SendRedirect</title>
</head>
<body>
구글 홈페이지로 이동
<%
response.sendRedirect("http://www.google.com");
%>
</body>
</html>
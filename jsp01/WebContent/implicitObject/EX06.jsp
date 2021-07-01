<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>page Context 기본 객체</title>
</head>
<body>
<%
	HttpServletRequest httpRequest = 
		(HttpServletRequest)pageContext.getRequest();
%>
request 기본객체와 pageContext.getRequest()의 동일여부:
<%= request == httpRequest %>
<br><br>
pageContext.getOut()메서드를 사용한 데이터 출력:
<% pageContext.getOut().println("안녕해"); %>
</body>
</html>
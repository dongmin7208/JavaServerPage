<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>
<html>
<head>
<meta charset="UTF-8">
<title>포워드 결과 </title>
</head>
<body>
포워드 결과입니다.<br>
요청 URL부분이 변경되지 않고 request객체도 유지됩니다.<br>
<%= "forward_ret.jsp에서 request파라미터 확인" %><br>
<%= "이름 : " + name %><br>
<%= "나이 : " + age %><br>
</body>
</html>
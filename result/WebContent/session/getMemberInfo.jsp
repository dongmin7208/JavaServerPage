<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String member = (String)session.getAttribute("MEMBER");
    	String name = (String)session.getAttribute("NAME");
    	session.setMaxInactiveInterval(10);
    %>
<html>
<head>
<title>세션 값 사용하기</title>
</head>
<body>
소속 : <%= member %><br>
이름 : <%= name %>
</body>
</html>
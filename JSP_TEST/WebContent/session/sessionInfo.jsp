<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date time = new Date();
	SimpleDateFormat formatter =
			new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<html>
<head>
<title>세션 정보</title>
</head>
<body>
세션 ID : <%= session.getId() %> <br>
<%
	time.setTime(session.getCreationTime());
%>
최초 세션 생성 시간 : <%= formatter.format(time) %> <br>
<%
	time.setTime(session.getLastAccessedTime());
%>
마지막에 접근 시간 : <%= formatter.format(time) %>
</body>
</html>
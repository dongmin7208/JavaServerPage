<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>
<html>
<head>
<title>Calendar 클래스 사용</title>
</head>
<body>
	<%
		java.util.Calendar cal = Calendar.getInstance();
	%>
	오늘은<br>
	<%=cal.get(java.util.Calendar.YEAR)%> 년<br>
	<%=cal.get(java.util.Calendar.MONTH)%> 월<br>
	<%=cal.get(java.util.Calendar.DATE)%> 일 입니다.
	

</body>
</html>
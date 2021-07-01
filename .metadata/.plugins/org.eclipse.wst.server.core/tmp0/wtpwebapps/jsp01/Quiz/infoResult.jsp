<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String ID = request.getParameter("ID");
	String password = request.getParameter("Password");
	String text = request.getParameter("text");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>infoResult</title>
</head>
<body>

입력한 정보는 아래와 같습니다.<br><br>
ID : <%= ID %><br><br>
Password : <%= password %><br><br>
자기 소개 :<%= text %>
</body>
</html>




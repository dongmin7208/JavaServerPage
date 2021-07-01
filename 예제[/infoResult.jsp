<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 폼 결과 페이지 </title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
입력한 정보는 아래와 같습니다. <p>
ID : <%= request.getParameter("id") %> <p> 
Password : <%= request.getParameter("pw") %> <p>
자기 소개 : <%= request.getParameter("desc") %> 
</body>
</html>
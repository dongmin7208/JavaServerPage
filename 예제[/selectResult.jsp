<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 결과 페이지 </title>
</head>
<body>
입력하신 정보는 아래와 같습니다. <p>
<%
String edu=request.getParameter("edu");
String na=request.getParameter("na");
String likes[]=request.getParameterValues("like");
out.println("학력: " + edu +"\n"); 
out.println("소속 국가: " + na +"\n");
out.println("관심 분야: ");
for(int i=0; i<likes.length; i++) {
	out.print(likes[i] + "\t");
}
%>
</body>
</html>
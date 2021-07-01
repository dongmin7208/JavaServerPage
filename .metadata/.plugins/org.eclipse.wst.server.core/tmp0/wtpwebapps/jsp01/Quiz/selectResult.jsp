<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="selectResult.jsp" method="post">
<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<title>결과 페이지</title>
</head>
<body>
<% 
	
	String 학력 = request.getParameter("학력");
	String 소속국가 = request.getParameter("소속국가");
	String[] 관심분야  = request.getParameterValues("관심분야");
	
	out.print("학력 : " + 학력);
	out.print("소속국가 : " + 소속국가);
	out.print("관심분야 : " );
	for(int i=0;i<관심분야.length;i++){
		out.print(관심분야[i]);
	}
	
%>


</body>
</html>
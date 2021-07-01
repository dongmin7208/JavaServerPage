<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="memberone.*" %>    
<% MemberDao dao = MemberDao.getInstance(); %>
<%
	String id = request.getParameter("id");
	boolean check = dao.idCheck(id);
%>
<html>
<head>
<meta charset="UTF-8">
<title>id 중복체크</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
<style>
a{ text-decoration: none; }
</style>
</head>
	<body>
	<br><b><%= id %></b>
	<%
		if(check){ out.println("는 이미 존재하는 아이디");}
		else{ out.println("는 사용가능합니다");}
	%>
		<a href="#" onClick="javascript:self.close()">닫기</a>

</body>
</html>
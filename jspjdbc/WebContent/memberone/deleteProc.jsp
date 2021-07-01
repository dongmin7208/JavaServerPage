<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="memberone.*" %>    
<% MemberDao dao = MemberDao.getInstance(); %>

<!DOCTYPE html>
<html>
<head>
<title>회원탈퇴</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<%
	String id = (String)session.getAttribute("loginID");
	String pass = request.getParameter("pass");
	int check = dao.deleteMember(id, pass);
	if(check == 1){
		session.invalidate();
%>
<meta http-equiv="Refresh" content="3;url=login.jsp">

<body>
<p>회원정보가 삭제되었습니다.<br></p>
<p>3초 후에 로그인 페이지로 이동합니다.</p>
<%	}
	else{
%>
<script>
	alert("비밀번호가 맞지 않습니다.");
	history.go(-1);
</script>
<%		} %>
</body>
</html>
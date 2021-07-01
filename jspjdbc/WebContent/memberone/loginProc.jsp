<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="memberone.*" %>    
<% MemberDao dao = MemberDao.getInstance(); %>
<%
	String memory = request.getParameter("memory");
	Boolean op = false;
	if(memory != null ) op = true;
	
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	int check = dao.loginCheck(id, pass);
%>
<%
	if(check == 1){			//로그인 성공
		session.setAttribute("loginID", id);
	if(op){
		Cookie cookie = new Cookie("ID",id);
		response.addCookie(cookie);
	}else{
		Cookie cookie = new Cookie("ID","");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		}
	
		response.sendRedirect("main.jsp");
	}
	else if(check == 0){	//비밀번호 틀림
%>
<script>
		alert("비밀번호가 틀렸습니다.");
		history.go(-1);
</script>
<%
	}else{ //아이디없음
%>
<script>
		alert("존재하지 않는 아이디 입니다.");
		history.go(-1);
</script>
<%
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String code = request.getParameter("code");

	
	if(code.equals("google")){
		response.sendRedirect("http://www.google.com");
	}
	else if(code.equals("naver")){
		response.sendRedirect("http://www.naver.com");
	}
	else if(code.equals("daum")){
		response.sendRedirect("http://www.daum.net");
	}
%>
0
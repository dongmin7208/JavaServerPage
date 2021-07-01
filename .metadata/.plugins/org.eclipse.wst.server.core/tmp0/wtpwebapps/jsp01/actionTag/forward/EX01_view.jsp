<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if(code.equals("A")){
		viewPageURI = "/actionTag/forward/viewModule/a.jsp";
	}
	else if(code.equals("B")){
		viewPageURI = "/actionTag/forward/viewModule/b.jsp";
	}
	else if(code.equals("C")){
		viewPageURI = "/actionTag/forward/viewModule/c.jsp";
	}
%>
<jsp:forward page="<%= viewPageURI %>"/>
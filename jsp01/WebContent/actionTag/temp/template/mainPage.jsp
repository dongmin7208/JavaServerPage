<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("PAGETITLE", "정보 보기");
%>
<jsp:forward page="template.jsp">
	<jsp:param name="CONTENTPAGE" value="infoView.jsp"/>
</jsp:forward>
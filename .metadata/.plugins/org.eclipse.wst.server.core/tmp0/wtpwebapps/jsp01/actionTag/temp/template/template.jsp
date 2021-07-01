<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pageTitle = (String) request.getAttribute("PAGETITLE");
	String contentPage = request.getParameter("CONTENTPAGE");

%>
<html>
<head>
<title><%=pageTitle %></title>
</head>
<body>
<table width="400" border="1" cellpadding="2" cellpacing="0">
	   <tr>
		<td colspan="2">
		<jsp:include page="/actionTag/temp/module/top.jsp" flush="false" /></td>
	   </tr>
	   <tr>
	   	<td width="100" align="top">
	   	<jsp:include page="/actionTag/temp/module/left.jsp" flush="false" /></td>
		<td width="300" align="top">
				<!--  내용부분 시작 -->
		<jsp:include page="<%=contentPage %>" flush="false" />
				<!--  내용부분 끝 -->
		</td>
		</tr>
		<tr>
		 <td colspan="2">
		 <jsp:include page="/actionTag/temp/module/bottom.jsp" flush="false" /></td>
</table>
</body>
</html>
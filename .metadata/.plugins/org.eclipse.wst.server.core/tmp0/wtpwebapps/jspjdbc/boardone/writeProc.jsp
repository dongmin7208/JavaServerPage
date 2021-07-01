<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "boardone.BoardDao" %>
<%@ page import = "java.sql.Timestamp" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="article" scope="page" class="boardone.BoardDto">
	<jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<%
	article.setRegdate(new Timestamp(System.currentTimeMillis() ) );
	article.setIp(request.getRemoteAddr() );
	BoardDao dbPro = BoardDao.getInstance();
	dbPro.insertArticle(article);
	response.sendRedirect("list.jsp");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
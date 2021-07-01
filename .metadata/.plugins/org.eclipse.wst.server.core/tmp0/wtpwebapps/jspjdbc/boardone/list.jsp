<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "boardone.BoardDao" %>
    <%@ page import = "boardone.BoardDto" %>
    <%@ page import = "java.util.List" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
    <%!
    	//수정<1>
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    %>
    <%
    	//수정<2>
    	int count = 0;
    	int number = 0;
    	List<BoardDto> articleList = null;
    	BoardDao dbPro = BoardDao.getInstance();
    	count = dbPro.getArticleCount(); //전체 글 수
    	if(count > 0){
    		articleList = dbPro.getArticles(); //수정<3>
    	}
    	number = count; //수정<4>
    %>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/liststyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<section>
<article>
<b>글목록(전체 글:<%= count %>)</b>
<table class="listwritebutton">
	<tr>
	<td><a href="writeForm.jsp">글쓰기</a></td>
	<tr>
</table>
<%
	if(count == 0){
%>
<table class="listtable">
<tr>
	<td>게시판에 저장된 글이 없습니다.</td>
</table>
<% } else { %>
<table class="listtable">
	<tr>
		<th id="num">번 호 </th>
		<th id="title">제 목</th>
		<th id="writer">작성자</th>
		<th id="date">작성일</th>
		<th id="counter">조 회 </th>
		<th id="ip">IP</th>
	</tr>
<%
	for(int i =0; i< articleList.size(); i++){
		BoardDto article = (BoardDto)articleList.get(i);
%>
	<tr>
		<td> <%= number-- %></td>
		<td class="titletd">
		<!--  수정<5> -->
		<a href="content.jsp?num=<%= article.getNum() %>&pageNum=1"><!-- 수정<6> -->
			<%= article.getSubject() %></a>
			<% if(article.getReadcount() >= 20){ %>
			<img src="images/hot.gif"><% } %></td>
		<td>
			<a href="mailto:<%= article.getEmail() %>">
			<%= article.getWriter() %></a></td>
		<td>
			<%= sdf.format(article.getRegdate()) %></td>
		<td><%= article.getReadcount() %></td>
		<td><%= article.getIp() %></td>
	</tr>
		<% } %>
</table>
</article>
<% } %>
<!--  수정<7> -->
</section>
</body>
</html>
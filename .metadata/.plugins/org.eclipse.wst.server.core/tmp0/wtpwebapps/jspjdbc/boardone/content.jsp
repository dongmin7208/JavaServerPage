<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "boardone.BoardDao" %>
   <%@ page import = "boardone.BoardDto" %>
   <%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/contentstyle.css" rel="stylesheet" type="text/css">
</head>
<%	
	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	try{
		BoardDao dbPro = BoardDao.getInstance();
		BoardDto article = dbPro.getArticle(num);
		int ref = article.getRef();
		int step = article.getStep();
		int depth = article.getDepth();
%>
<body>
<section>
<b>글 내용 보기</b>
<br/><br/>
<form>
	<table class="contenttable">
		<tr>
			<th>글번호</th>
			<td><%= article.getNum() %></td>
			<th>조회수</th>
			<td><%= article.getReadcount() %></td>
		</tr>
		<tr>
			<th>작성자></th>
			<td><%= article.getWriter() %></td>
			<th>작성일</th>
			<td><%= article.getRegdate() %></td>
		</tr>
		<tr>
			<th>글제목</th>
			<td colspan="3" class="contenttitle"><%= article.getSubject() %></td>
		</tr>
		<tr>
			<th>글내용</th>
			<td colspan="3" class="content"><pre><%= article.getContent() %></pre></td>
		</tr>
		<tr>
			<td colspan="4">
				<input type="button" value="글수정"
				onClick="document.location.href=
				'updateForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button"
		<!--  수정<1> -->
				<input type="button" value="글삭제"
					onClick="document.location.href=
					'list.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
					&nbsp;&nbsp;&nbsp;&nbsp;
		
				
	</table>
</form>
</section>
</body>
</html>
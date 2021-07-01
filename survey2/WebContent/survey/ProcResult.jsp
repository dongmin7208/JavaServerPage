<%@page import="survey.ConnUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "survey.surveyDao,survey.surveyDto" %>
<%@ page import = "java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	session.invalidate();
%>
<jsp:useBean id="dto" scope="page" class="survey.surveyDto">
    <jsp:setProperty name="dto" property="*"/>
</jsp:useBean>    
<%
	if(request.getParameter("score1") != null){
	int score = 0;
	for(int i=1; i<=20; i++){
		score += Integer.parseInt(request.getParameter("score"+i));
	}
	score *= 5;
	dto.setScore(score);
	}

	surveyDao dao = surveyDao.getInstance();
	dao.resultScore(dto);	

%>

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문 조사</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style>
table{
	margin: auto;
	 width: 400px;
}
</style>
</head>
<body>
<header>
	<a id="title" href="surveymain.jsp">역사지식 설문조사</a>
<nav>
	<ul>
		<li><a href="surveyinfo.jsp">정보입력</a></li>
		<li><a href="ProcResult.jsp">결과현황</a></li>
	</ul>
</nav>
</header>
<section>
<article class="survey">
	<h2>역사 테스트 결과</h2>
	
<% 
	ArrayList<surveyDto> ret = dao.getSurveyAll();
%>	
	
	<%= dto.getName() %>님의 역사점수는
	<%= dto.getScore()%><br><br>
	
	
	<h1 style="text-align: center">테스트 참여한 사람들의 점수</h1>
	<table>
		<tr>
			<th> 지역 </th>
			<th> 이름 </th>
			<th> 성별 </th>
			<th> 나이 </th>
			<th> 점수 </th>
		</tr>
	<%
		String area = "";
		for(int i=0; i<ret.size(); i++){
			surveyDto tmp = ret.get(i);
	%>
		<tr>
			<td><%=tmp.getArea() %></td>
			<td><%=tmp.getName() %></td>
			<td><%=tmp.getGender() %></td>
			<td><%=tmp.getAge() %></td>
			<td style="color:red"><b><%=tmp.getScore() %></b></td>
		</tr>
	<% } %>
	</table>
	
		
	<br>
	</article>
</section>
<footer>
Copyright 2019  g2o2d@kgitbank.co.kr
</footer>
</body>
</html>



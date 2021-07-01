<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="simplesurvey.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dto" class="simplesurvey.SurveyDto"/>
<jsp:setProperty property="*" name="dto"/>
<%-- <jsp:useBean id="dao" class="simplesurvey.SurveyDao"/> 생성 불가 --%>

<% 
	SurveyDao dao = SurveyDao.getInstance();
	dao.insert(dto); 
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문완료</title>
</head>
<body>
설문이 완료되었습니다.<br>
<a href="surveyResult.jsp">설문결과</a>
</body>
</html>
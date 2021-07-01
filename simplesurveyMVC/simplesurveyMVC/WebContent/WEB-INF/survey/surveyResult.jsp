<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "simplesurvey.SurveyDto" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문결과</title>
</head>
<body>
결과보기
<table>
<tr><td><a href="#">현재연봉 평균(연령대)</a></td><td><a href="#">희망연봉 평균(연령대)</a></tr>
<tr><td><a href="#">현재연봉 평균(성별)</a></td><td><a href="#">희망연봉 평균(성별)</a></tr>
<tr><td><a href="#">전체 현재연봉 평균</a></td><td><a href="#">전체 희망연봉 평균</a></tr>
</table>
<hr>
전체결과
<table>
<tr><td>번호</td><td>나이</td><td>성별</td><td>현재연봉</td><td>희망연봉</td></tr>
<% 
	List<SurveyDto> ret = (List<SurveyDto>)request.getAttribute("result");
	for(SurveyDto dto : ret) {	%>
	<tr>
		<td><%= dto.getNum() %></td>
		<td><%= dto.getAge() %></td>
		<td><%= dto.getGender() %></td>
		<td><%= dto.getSalary() %></td>
		<td><%= dto.getSalarydesired() %></td>
	</tr>
<%
		} //for end
%>
</table>
</body>
</html>
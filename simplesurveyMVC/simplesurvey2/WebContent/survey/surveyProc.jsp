<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="simplesurvey.*" %>
<%
	request.setCharacterEncoding("utf-8");
	int age = Integer.parseInt(request.getParameter("age"));
	String gender = request.getParameter("gender");
	int salary = Integer.parseInt(request.getParameter("salary"));
	int salarydesired = Integer.parseInt(request.getParameter("salarydesired"));
	System.out.println(age);
	System.out.println(gender);
	System.out.println(salary);
	System.out.println(salarydesired);

	SurveyDto dto = new SurveyDto();
	dto.setAge(age);
	dto.setGender(gender);
	dto.setSalary(salary);
	dto.setSalarydesired(salarydesired);
	
	SurveyDao dao = new SurveyDao();
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
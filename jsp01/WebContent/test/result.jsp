<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>
result.jsp 결과<br>
<%
	request.setCharacterEncoding("UTF-8");
	String name =request.getParameter("name");
	String age =request.getParameter("age");
	String kor =request.getParameter("kor");
	String english =request.getParameter("english");
	String mat =request.getParameter("mat");
	String sum =request.getParameter("sum");
	String avg =request.getParameter("avg");
	
	test.Student st = new test.Student();
	st.setName(name);
	st.setAge(Integer.parseInt(age));
	st.setKor(Integer.parseInt(kor));
	st.setEng(Integer.parseInt(english));
	st.setMat(Integer.parseInt(mat));
	st.setSum(Integer.parseInt(sum));
	st.setAvg(Integer.parseInt(avg));
	
	
%>
<%= name %><br>
<%= age %><br>
<%= kor %><br>
<%= english %><br>
<%= mat %><br>
<%= sum %><br>
<%= avg %><br>
<hr>
<%= st.toString() %>
</body>
</html>
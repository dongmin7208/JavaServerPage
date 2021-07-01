<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>
result2.jsp 결과<br>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="st" class="test.Student"/>
<jsp:setProperty property="name" name="st"/>
<jsp:setProperty property="age" name="st"/>
<jsp:setProperty property="kor" name="st"/>
<jsp:setProperty property="eng" name="st"/>
<jsp:setProperty property="mat" name="st"/>
<jsp:setProperty property="sum" name="st"/>
<jsp:setProperty property="avg" name="st"/>

<jsp:getProperty property="name" name="st"/>
<jsp:getProperty property="age" name="st"/>
<jsp:getProperty property="kor" name="st"/>
<jsp:getProperty property="eng" name="st"/>
<jsp:getProperty property="mat" name="st"/>
<jsp:getProperty property="sum" name="st"/>
<jsp:getProperty property="avg" name="st"/>



<hr>
<%= st.toString() %>
</body>
</html>
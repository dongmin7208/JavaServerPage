<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
//String message = request.getParameter("message");

%>
<jsp:useBean id="msg" class="javaBeans.SimpleData" />
<%-- SimpleData msg = new SimpleData();  --%>
<jsp:setProperty name="msg" property="message" />
<%--msg.setMessage(?); --%>
<!--  주의점 : 기본자료형,  String -->
<html>
<head>
<title>빈즈 실습</title>
</head>
<body>
	<h1>간단한 빈즈 프로그램 결과</h1>
	<hr color="red"></hr>
	<br>
	<br>
	<font size="5"> 메세지 : <jsp:getProperty name="msg"
			property="message" /> <%--<% =message %> --%>
	</font>
</body>
</html>
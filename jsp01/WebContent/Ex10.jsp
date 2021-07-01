<%--
에러페이지 실습을 위한 페이지.
	
	실습방법은 다음과 같다.
	1.그냥 실행 하여 web.xml파일에 지정된 500에러 페이지 응답 확인
	
	2.아래 주석 처리되어 있는 에러페이지를 지정하는
	페이지 디렉티브의 주석을 제거 후 실행하여
	web.xml파일에 지정된 404에러 페이지 응답 확인
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error1.jsp" %>


<html>
<head>
<title>파라미터 출력</title>
</head>
<body>
name 파라미터 값 :
<%= request.getParameter("name").toUpperCase() %>

</body>
</html>
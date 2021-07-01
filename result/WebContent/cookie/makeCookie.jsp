<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("홍길동", "UTF-8"));
	//쿠키 생성(규약에 맞지 않는값을 사용한다면 인코딩이 필요하다)
	response.addCookie(cookie);
	//생성한 쿠키를 응답객체에 추가(여러 개 가능)
%>

<html>
<head>
<title>쿠키 생성</title>
</head>
<body>
			<%=cookie.getName() %>
			쿠키의 값 : "<%=cookie.getValue() %>"

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length >0 ){
		for(int i = 0 ; i< cookies.length; i++){
			if(cookies[i].getName().equals("name")){
				Cookie cookie = new Cookie("name","");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
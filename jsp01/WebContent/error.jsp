<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<html>
<head>
<title>예외 발생</title>
</head>
<body>
	요청 처리 과정에서 예외가 발생하였습니다.<br><br>
	빠른 시간 내에 문제를 해결하도록 하겠습니다.<br><br>
	에러 타입 : <%=exception.getClass().getName()%><br></br>
	에러 메세지 : <b><%=exception.getMessage()%></b>
</body>
</html>
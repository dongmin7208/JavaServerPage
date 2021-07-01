<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>로그인</title>
</head>
<body>
    <form action="<%=request.getContextPath()%>/member/sessionLogin.jsp"
        method="POST">
        아이디 <input type="text" name="id" size="10"> 암호 <input
            type="password" name="password" size="10"> <input
            type="submit" value="로그인">
    </form>
</body>
</html>
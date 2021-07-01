<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>GET 메서드로 요청</title>
</head>
<body>
	<form name="yourname" action="result.jsp" method="get">
		당신의 이름은? <input type="text" name="name" /><br>
		당신의 이름은? <input type="text" name="age" />
	<input type="submit" value="전송"/>
	</form>
</body>
</html>
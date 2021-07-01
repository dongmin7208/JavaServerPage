<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>inforForm</title>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
</head>
<body>
	<form name="yourname" action="infoResult.jsp" method="post">
		ID : <input type="text" name="ID" /><br>
		Password <input type="password" name="Password" /><br>
		자기소개<br>
		<textarea name ="text" rows="10" cols="100"></textarea>
		<br><br>
	<input type="submit" value="전송"/>
	<input type="submit" value="초기화"/>
</body>
</html>
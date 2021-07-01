<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 입력 양식 </title>
</head>
<body>
<form action="infoResult.jsp" method="post">
ID : <input type="text" name="id"> <p>
Password : <input type="password" name="pw"> <p>
자기소개 <br>
<textarea name="desc" cols="50" rows="4"></textarea> <p>
<input type="submit" value="전송">
<input type="reset" value="초기화">
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 입력</title>
</head>
<body>
<form method="post" action="result.jsp">
<!--<form method="post" action="result2.jsp">  -->
<!--<form method="post" action="result3.jsp"> -->
	<input type="text" name="name" placeholder="이름"><br>
	<input type="text" name="age" placeholder="나이"><br>
	<input type="text" name="kor" placeholder="국어"><br>
	<input type="text" name="english" placeholder="영어"><br>
	<input type="text" name="mat" placeholder="수학"><br>
	<input type="text" name="sum" placeholder="총점"><br>
	<input type="text" name="avg" placeholder="평균"><br>
	<input type="submit" value="제출">
</form>
</body>
</html>
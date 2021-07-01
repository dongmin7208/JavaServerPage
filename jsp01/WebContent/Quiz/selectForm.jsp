<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>입력 양식</title>
</head>
<body>
<form action="selectResult.jsp" method="post">
학력 
	<select name="학력" >
		<option >재학생</option>
		<option >졸업생</option>
		<option >자퇴생</option>
	</select> <br><br>
소속 국가
	<select name="소속국가" style="overflow-y:hidden;" size="3" >
		<option >대한민국</option>
		<option >일본</option>
		<option >미국</option>
	</select><br><br>
관심 분야
	<select name="관심분야" style="overflow-y:hidden;" size="4" multiple="multiple" >
		<option >컨설팅</option>
		<option >프로듀서</option>
		<option >프로그래머</option>
		<option >서버관리자</option>
	</select><br><br>
<input type="submit" value="전송">
<input type="submit" value="초기화">

</body>
</html>
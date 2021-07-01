<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문조사</title>
</head>
<body>
연봉설문<br>
<form method="post" action="<%= request.getContextPath() %>/surveyPro">
연령<br>
<input type="radio" name="age" value="10">10대
<input type="radio" name="age" value="20">20대
<input type="radio" name="age" value="30">30대
<input type="radio" name="age" value="40">40대
<input type="radio" name="age" value="50">50대
<input type="radio" name="age" value="60">60대
<br>
성별<br>
<input type="radio" name="gender" value="남">남자
<input type="radio" name="gender" value="여">여자
<br>
현재연봉<br>
<input type="radio" name="salary" value="1000">1000만원 이상
<input type="radio" name="salary" value="2000">2000만원 이상
<input type="radio" name="salary" value="3000">3000만원 이상
<input type="radio" name="salary" value="4000">4000만원 이상
<input type="radio" name="salary" value="5000">5000만원 이상
<input type="radio" name="salary" value="6000">6000만원 이상
<br>
희망연봉<br>
<input type="radio" name="salarydesired" value="1000">1000만원 이상
<input type="radio" name="salarydesired" value="2000">2000만원 이상
<input type="radio" name="salarydesired" value="3000">3000만원 이상
<input type="radio" name="salarydesired" value="4000">4000만원 이상
<input type="radio" name="salarydesired" value="5000">5000만원 이상
<input type="radio" name="salarydesired" value="6000">6000만원 이상
<br>
<input type="submit" value="설문완료">
</form>
</body>
</html>
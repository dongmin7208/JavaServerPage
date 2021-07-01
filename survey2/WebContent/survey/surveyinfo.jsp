<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% session.invalidate(); %>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문 조사</title>
<link href="css/style.css" rel="stylesheet" type="text/css">

<style>

</style>
</head>
<body>
<header>
	<a id="title" href="surveymain.jsp">역사지식 설문조사</a>
<nav>
	<ul>
		<li><a href="surveyinfo.jsp">정보입력</a></li>
		<li><a href="ProcResult.jsp">결과현황</a></li>
	</ul>
</nav>
</header>
<section>
	<article>
	<h2>참여자 정보입력</h2><br>
	<form action="surveyvalue.jsp" method="POST" >
	<ul>
		<li><h4>성별</h4>
		<label><input type="radio" name="gender" value="man" required>남자</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label><input type="radio" name="gender" value="woman" required>여자</label><br>
		</li>
		<li><h4>나이</h4>
		<input type="text" name="age" placeholder="나이 입력" required pattern="[1-9]{1,2}">
		</li>
		
		<li><h4>이름</h4>
		<input type="text" name="name" placeholder="이름 입력" required >
		</li>
		
		<li><h4>출신지역</h4>
		<select name="area" size="1" required>
			<option value="경기도">경기도</option>
			<option value="강원도">강원도</option>
			<option value="충청도">충청도</option>
			<option value="전라남도">전라남도</option>
			<option value="전라북도">전라북도</option>
			<option value="경상남도">경상남도</option>
			<option value="경상북도">경상북도</option>
			<option value="기타">기타</option>
		</select>
		</li>
		<li><h4>학력</h4>
		<label><input type="radio" name="academic" value="1" required>대학교 졸업이상</label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label><input type="radio" name="academic" value="2" required>고등학교 졸업</label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label><input type="radio" name="academic" value="3" required>중학교 졸업</label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label><input type="radio" name="academic" value="4" required>초등학교 졸업</label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label><input type="radio" name="academic" value="5" required>기타</label><br>
		</li>
		<li><h4>투표경험</h4>
		<label><input type="radio" name="experience" value="1" required>있다</label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label><input type="radio" name="experience" value="2" required>없다</label>
		</li>
	</ul>
	<input type="submit" value="정보입력 완료">
	</form>
	</article>
</section>
<footer>
Copyright 2019  g2o2d@naver.com
</footer>
</body>
</html>
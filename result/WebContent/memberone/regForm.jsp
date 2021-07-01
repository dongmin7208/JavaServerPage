<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Register Form</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/regFormstyle.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
</head>
<body>
<section>
<form method="post" action="regProc.jsp" name="regForm">
<table class="regtable">
	<tr>
		<th colspan="2">회원 가입 정보 입력</th>
	</tr>
	<tr>
		<td>아이디 : </td>
		<td><input type="text" name="id" required/></td>
		<td><input type="button" value="중복확인" onClick="idCheck(this.form.id.value)"/></td>
	</tr>
	<tr>
		<td>패스워드 : </td>
		<td><input type="password" name="pass" required/></td>
	</tr>
	<tr>
		<td>패스워드 확인:</td>
		<td><input type="password" name="repass" required/></td>
	</tr>
	<tr>
		<td>이메일 : </td>
		<td><input type="email" name="email" required/></td>
	</tr>
	<tr>
		<td colspan="2" class="regsubmit">
		<input type="button" value="회원가입" onClick="inputCheck()"/>
		<input type="reset" value="다시 입력"/>
		</td>
	</tr>
</table>
</form>
</section>
</body>
</html>
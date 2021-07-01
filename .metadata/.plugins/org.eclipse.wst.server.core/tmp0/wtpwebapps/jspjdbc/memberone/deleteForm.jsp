<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 탈퇴</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style>
.deleteTable{
	margin: auto;
	left:0; top:0; right:0; bottom:0;
	margin-bottom:5px;
	width:260px;
	border: 1px solid black;
	text-align:center;
}
</style>
</head>
<script>
function checkIt(){
	if(!document.myForm.pass.value){
		alert("비밀번호를 입력하지 않았습니다.");
		document.myForm.pass.focus();
		return false;
	}
}
</script>


<body>
<form name="myForm" method="post" action="deleteProc.jsp"
					onsubmit="return checkIt()">
		<table class="deleteTable">
			<tr><td colspan="2"><b>회원 탈퇴</b></td></tr>
			<tr><td><b>비밀번호 입력</b></td>
				<td><input type="password" name="pass"></td>
				</tr>
				</table>
				<input type="submit" value="회원탈퇴">
				<input type="button" value="취소"
					onClick="javascript:window.location='main.jsp'">
</form>
</body>
</html>
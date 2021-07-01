<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 입력 양식 </title>
</head>
<body>

<form action="selectResult.jsp" method="post">
<table height=200>
<tr>
<td>학력</td>
<td>
<select name="edu">
<option> 재학생 </option>
<option> 학사 </option>
<option> 석사 </option>
<option> 박사 </option>
</select>
</td>
</tr> 

<tr>
<td> 소속 국가 </td>
<td>
<select name="na" size="3">
<option> 대한민국 </option>
<option> 미국 </option>
<option> 일본 </option>
</select>
</td>
</tr> 

<tr>
<td> 관심 분야 </td>
<td>
<select name="like" size="4" multiple>
<option> 컨설팅 </option>
<option> 프로듀서 </option>
<option> 프로그래머 </option>
<option> 서버관리자 </option>
</select>
</td>
</tr>
</table>

<input type="submit" value="전송">
<input type="reset" value="초기화">
</form>

</body>
</html>
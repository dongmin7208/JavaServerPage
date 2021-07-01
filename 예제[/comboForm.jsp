<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> 콤보 양식 페이지 </title>
</head>

<body>
<form action="comboResult.jsp">
	<h2>검색 엔진을 선택하세요.</h2>
		<table>
			<tr>
				<td>
				<select name="url">
						<option value="http://www.google.com">구글</option>
						<option value="http://www.daum.net">다음</option>
						<option value="http://www.naver.com">네이버</option>
				</select>
				</td>
				<td><input type="submit" value="확인"></td>
		</table>
</form>

</body>
</html>
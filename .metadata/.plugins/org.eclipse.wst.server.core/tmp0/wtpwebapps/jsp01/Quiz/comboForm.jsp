<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>콤보 양식 페이지</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/Quiz/comboResult.jsp">
<h1>검색 엔진을 선택하세요.</h1>
	<select name="code">
		<option value="google">구글</option>
		<option value="naver">네이버</option>
		<option value="daum">다음</option>
	</select>
<input type="submit" value="확인">
</form>
</body>
</html>
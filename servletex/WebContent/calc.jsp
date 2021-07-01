<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>평균 계산기</h4>
<form method="get" action="<%=request.getContextPath()%>/calc">
	첫 번째 값: <input type="text" name="n1"><br>
	두 번째 값: <input type="text" name="n2"><br>
	세 번째 값: <input type="text" name="n3"><br>
	<input type="submit" value="결과보기">
</form>

</body>
</html>
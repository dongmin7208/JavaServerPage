<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>
<h1>계산 결과</h1>
	<%
	int sum = 0;
	String sum2 = "";
	int num =Integer.parseInt(request.getParameter("number"));
	for (int i=1; i<=num;i++){
		sum += i;
		if(i !=num){
			sum2 += i+"+";
		}else sum2 += i+"=";
		
		
	}
	%>
	<%= sum2+sum %>
</body>
</html>
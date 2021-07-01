<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>결과 페이지</title>
</head>
<body>
	<%!public int sum(int a) {
		int total = 0;
		for (int i = 1; i <= a; i++) {
			total += i;
		}
		return total;
	}%>
<h1>계산 결과</h1>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	for(int i=1; i<num; i++)
	{
		out.print(i+"+");
	}
	out.print(num+"="+sum(num));
%>
</body>
</html>
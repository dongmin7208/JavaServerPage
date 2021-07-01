<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="1kb" autoFlush="false" %>
<html>
<head>
<title>autoFlush 예제</title>
</head>
<body>
<!--  이 부분에서 4KB이상의 데이터 발생 -->
<% for(int i=0; i<1000; i++){ %>
1234
<%		} %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP_File</title>
</head>
<body>
	<h2>JSP script 예제</h2>
	<% //Scriptlet : 자바 코드가 들어가는 곳.(연산, 처리)
		String scriptlet = "스크립틀릿입니다.";
		String comment = "주석문 입니다.";
		out.println("내장(기본)객체를 이용한 출력 : " +
						declation + "<br><br>");
	%>
	선운문 출력:
	선언문 출력하기 : <%=declation %><br><br>
	선언문 출력하기 : <%=declationMethod() %><br><br>
	스크립틀릿 출력하기 : <%=scriptlet%><br><br>
	<!--  JSP에서 사용하는 HTML 주석문 -->
	<!--  <%=comment%> -->
	<%-- JSP주석 --%>
	<%-- <%=comment%> --%>
	<%
		//자바주석
		/*
		자바 범위 주석
		*/
	%>
	<%!
	// declation : 선언문
	String declation = "선언문 입니다."; //필드(변수) 선언
	
	public String declationMethod(){ //메서드(함수) 선언
		return declation;
	}
	%>				
</body>
</html>
</body>
</html>
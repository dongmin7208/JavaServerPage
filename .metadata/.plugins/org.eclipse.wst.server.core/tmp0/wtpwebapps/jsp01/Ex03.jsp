<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	private int numOne = 0;
	public void jspInit(){  //오버라이딩
		System.out.println("jspInit() 호출됨!");
	}
	public void jspDestroy(){	//오버라이딩
		System.out.println("jspDestroy() 호출됨!");
	}
%>


<html>
<head>
<title>Life Cycle</title>
</head>
<body>
<%
	int numTwo = 0;
	numOne++;	//새로고침 시 마다 증가
	numTwo++;	//새로고침 할 때마다 초기화
%>
<ul>
	<li>Number One : <%=numOne %></li>
	<li>Number Two : <%=numTwo %></li>
</ul>



</body>
</html>
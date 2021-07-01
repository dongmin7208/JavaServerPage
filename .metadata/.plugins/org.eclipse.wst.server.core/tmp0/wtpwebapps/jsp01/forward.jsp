<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	System.out.println("forward.jsp에서 request파라미터 확인");
	System.out.println("이름 : " + name);
	System.out.println("나이 : " + age);
	System.out.println("forward_ret으로 요청을 전달");
	RequestDispatcher dispatcher = 
			request.getRequestDispatcher("forward_ret.jsp");
	dispatcher.forward(request, response);
	//forward_ret.jsp로 요청을 전달
%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	int age = Integer.parseInt(request.getParameter("age"));
	String gender = request.getParameter("gender");
	int salary = Integer.parseInt(request.getParameter("salary"));
	int salarydesired = Integer.parseInt(request.getParameter("salarydesired"));
	System.out.println(age);
	System.out.println(gender);
	System.out.println(salary);
	System.out.println(salarydesired);
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "lkc";
	String pw = "1234";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, id, pw);
		String sql = "insert into SURVEYDATA values(SURVEYDATA_SEQ.nextval, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, age);
		pstmt.setString(2, gender);
		pstmt.setInt(3, salary);
		pstmt.setInt(4, salarydesired);
		int ret = pstmt.executeUpdate();
		System.out.println(ret+"개의 행이 삽입되었습니다.");
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(pstmt != null){
				pstmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}catch(Exception e1){
			e1.printStackTrace();
		}
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문완료</title>
</head>
<body>
설문이 완료되었습니다.<br>
<a href="surveyResult.jsp">설문결과</a>
</body>
</html>
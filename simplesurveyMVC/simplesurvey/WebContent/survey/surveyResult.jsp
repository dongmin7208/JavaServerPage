<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문결과</title>
</head>
<body>
결과보기
<table>
<tr><td><a href="#">현재연봉 평균(연령대)</a></td><td><a href="#">희망연봉 평균(연령대)</a></tr>
<tr><td><a href="#">현재연봉 평균(성별)</a></td><td><a href="#">희망연봉 평균(성별)</a></tr>
<tr><td><a href="#">전체 현재연봉 평균</a></td><td><a href="#">전체 희망연봉 평균</a></tr>
</table>
<hr>
전체결과
<table>
<tr><td>번호</td><td>나이</td><td>성별</td><td>현재연봉</td><td>희망연봉</td></tr>
<% 
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "lkc";
	String pw = "1234";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, id, pw);
		String sql = "select * from SURVEYDATA";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();	
		while(rs.next()) {	%>
	<tr>
		<td><%= rs.getInt(1) %></td>
		<td><%= rs.getInt(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getInt(4) %></td>
		<td><%= rs.getInt(5) %></td>
	</tr>
<%		} //while end 
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
</table>
</body>
</html>
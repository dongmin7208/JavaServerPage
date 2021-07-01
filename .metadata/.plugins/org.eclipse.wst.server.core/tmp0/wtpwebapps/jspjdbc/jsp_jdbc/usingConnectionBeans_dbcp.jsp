<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, jsp_jdbc.*" %>
<html>
<head>
<title>JSP에서 데이터베이스 연동하기</title>
</head>
<body bgcolor="#FFFFCC">
<h2>Beans를 사용한 데이터베이스 연동 예제</h2><br><br>
<h3>회원 정보</h3>
	<table bordercolor="#0000FF" border="1">
		<tr>
			<td><strong> ID </strong></td>
			<td><strong> PASSWORD </strong></td>
			<td><strong> NAME </strong></td>
			<td><strong> MEM_NUM1 </strong></td>
			<td><strong> MEM_NUM2 </strong></td>
			<td><strong> E_MAIL </strong></td>
			<td><strong> PHONE </strong></td>
			<td><strong> ZIPCODE/ADDRESS </strong></td>
			<td><strong> JOB </strong></td>
			</tr>
			<jsp:useBean id="dao" class="jsp_jdbc.DAO" scope="page"/>
<%
	Vector<TempMemberVO> vlist = dao.getMemberList();
	int counter = vlist.size();
	for(int i = 0; i < vlist.size(); i++){
		TempMemberVO tmp = vlist.elementAt(i);
%>			
			<tr>
				<td><%= tmp.getId() %></td>
				<td><%= tmp.getName() %></td>
				<td><%= tmp.getPassword() %></td>
				<td><%= tmp.getMem_num1() %></td>
				<td><%= tmp.getMem_num2() %></td>
				<td><%= tmp.getE_mail() %></td>
				<td><%= tmp.getPhone() %></td>
				<td><%= tmp.getZipcode() +"/"+ tmp.getAddress() %></td>
				<td><%= tmp.getJob() %></td>
<%
	}
%>
	</tr>
	</table>
	<br><br>
	total records : <%= counter %>
</body>
</html>
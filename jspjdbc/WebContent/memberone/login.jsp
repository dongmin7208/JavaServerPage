<%-- 로그인 폼! --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%	
    String id = "";
  	Cookie[] cookies = request.getCookies();
    if(cookies != null && cookies.length > 0 ){
    	for( int i =0; i < cookies.length; i++){
    		if(cookies[i].getName().equals("ID")){
					id = cookies[i].getValue();
			}
    	}
    }
    %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/loginstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<section>
	<article class="login">
		<form method="post" action="<%=request.getContextPath() %>/loginProc.jsp/">
			<table class="loginTable">
				<tr>
					<th colspan="2">회원 로그인</th>
				</tr>
				<tr>
					<td><input type="text" class="id" name="id" value="<%=id %>" placeholder="아이디 입력"/></td>
						
				</tr>
				<tr>
					<td><input type="password" class="pass" name="pass" placeholder="비밀번호 입력"></td>
				</tr>
					<tr><input type="checkbox" name="memory" value="ok">아이디기억하기 </tr>
				<tr>
					<td colspan="2" class="loginsubmit">
						<input type="submit" value="로그인"/>
						<input type="button" value="회원가입"
						onclick="javascript:window.location='regForm.jsp'"/>
					</td>
				</tr>
			</table>
		</form>
	</article>
</section>
</body>
</html>
<%@page import="survey.surveyDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% session.invalidate(); %>
<!DOCTYPE html>
<%
	String gender= request.getParameter("gender");
	String age = request.getParameter("age");
	String area = request.getParameter("area");
	String academic = request.getParameter("academic");
	String experience = request.getParameter("experience");
	String name = request.getParameter("name");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문 조사</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style>

</style>
</head>
<body>
<header>
	<a id="title" href="surveymain.jsp">역사지식 설문조사</a>
<nav>
	<ul>
		<li><a href="surveyinfo.jsp">정보입력</a></li>
		<li><a href="ProcResult.jsp">결과현황</a></li>
	</ul>
</nav>
</header>
<section>
	<h4>
	다음은 행복에 관한 여러 가지 진술들입니다.<br>
	각 진술이 당신에게 해당되는 정도를 선택하고 제출해주세요.
	</h4>
	<article class="survey">
	<form action="ProcResult.jsp" method="post">
	<p>
		<h4>1. 이승만이 10월1일에 국군의날로 공포하였다  </h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score1" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score1" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>2. 1948년8월26일 한미상호방위조 협정을 체결하였다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score2" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score2" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>3. 박정희는 경인고속도로를 개통시켰다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score3" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score3" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>4. 김대중은 경부고속도를 개통시켰다..</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score4" value="0">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score4" value="1">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>5. 김신조를 필두로 남파공작원들은 20명이었다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score5" value="0">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score5" value="1">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>6. 우리나라 국보1호는 동대문이다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score6" value="0">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score6" value="1">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>7. 대한민국 국보11호는 익산 미륵사지 석탑 이다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score7" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score7" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>8. 세종대왕의 아버지는 태종 이다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score8" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score8" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>9. 전두환대통령때 88올림픽이 개최되었다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score9" value="0">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score9" value="1">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>10. 최초의 금강산 해로관광은 김대중때 성사되었다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score10" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score10" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>11. 1970년 7월 7일 김대중은 경부고속도를 개통하였다. </h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score11" value="0">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score11" value="1">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>12. 나는 1987년 12월 15일 김현희KAL기 폭파사건이 생겼다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score12" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score12" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>13. 1974년 8월 15일 서울지하철이 개통되었다 .</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score13" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score13" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>14. 김영삼 대통령시절 IMF 금융기관에 구제요청을 하였다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score14" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score14" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>15. 김영삼이 약속을 잊고 전두환과 노태우를 사형에 처하게 했다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score15" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score15" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>16. 이명박이 서울시장시절에 대중교통 환승제도를 만들었다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score16" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score16" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>17. 노무현은 한미FTA를 추진 하였다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score17" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score17" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>18. 박근혜가 통진당해산과 이석기 구속을 시켰다. .</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score18" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score18" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>19. 박근혜때 개성공단폐쇄와 사드배치를 하였다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score19" value="1">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score19" value="0">아니다.</label><br>
		
		</li>
	</ul>
	<p>
		<h4>20. 노무현은 남북관계로 노벨평화상을 받았다.</h4>
		<ul>
		<li>
	
		<label><input type="radio" class="ans" name="score20" value="0">맞다.</label><br>
		
		<label><input type="radio" class="ans" name="score20" value="1">아니다.</label><br>
		
		</li>
	</ul>
	
	<input type="hidden" name="gender" value="<%= gender %>"/>
	<input type="hidden" name="age" value="<%= age %>"/>
	<input type="hidden" name="area" value="<%= area %>"/>
	<input type="hidden" name="academic" value="<%= academic %>"/>
	<input type="hidden" name="experience" value="<%= experience %>"/>
	<input type="hidden" name="name" 		value="<%= name %>"/>
	
	<input type="submit" value="설문 작성 완료">
		
	</form>
	</article>
</section>
<footer>
Copyright 2019  g2o2d@kgitbank.co.kr
</footer>
</body>
</html>
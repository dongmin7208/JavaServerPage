package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SimpleController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//2단계 요청 분석
		String type= request.getParameter("type");
		
		//3단계 모델을 사용하여 분석된 요청을 처리
		Object resultObject = null;
		if( type == null || type.equals("greeting")) {
			resultObject = "안녕하세요.";
		} else if(type.equals("date")) {
			resultObject = new java.util.Date();
		} else {
			resultObject = "Invalid Type!";
		}
		
		//4단계 request나 session에 처리된 결과를 저장
		request.setAttribute("result", resultObject);
		
		//5단계 RequestDispatcher를 사용하여 알맞은 뷰로 포워딩 또는 리다이렉트!
		RequestDispatcher dispatcher = request.getRequestDispatcher("/simpleView.jsp");
		dispatcher.forward(request, response);
	}
}

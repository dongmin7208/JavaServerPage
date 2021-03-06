package urlpattern;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet {
	
	Map<String, Object> command = new HashMap<String, Object>();
	
	public FrontController() {
		command.put("/calc", new CalcAction());
		command.put("/info", new InfoAction());
		command.put("/now", new NowAction());
	
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		processRequest(req, resp);
	}
	
	public void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name =req.getRequestURI().substring(5);
		String a = req.getMethod();
		System.out.println(name + " " + a);
		
		//command에서 해당 요청에 맞는 객체 가져오기
		CommandAction action = (CommandAction)command.get(name);
		String view = "";
		if( action != null) {
			view = action.processRequest(req, resp);
			RequestDispatcher dispatcher = req.getRequestDispatcher(view);
			dispatcher.forward(req, resp);
		}
		
		
		/*
		 * if(name.equals("/calc")) { if(a.equals("GET"))
		 * ((CalcAction)command.get(name)).doGet(req, resp); else {
		 * ((CalcAction)command.get(name)).doPost(req, resp); } }
		 * 
		 * if(name.equals("/info")) { if(a.equals("GET"))
		 * ((InfoAction)command.get(name)).doGet(req, resp); else {
		 * ((InfoAction)command.get(name)).doPost(req, resp); } }
		 * 
		 * if(name.equals("/now")) { if(a.equals("GET"))
		 * ((NowAction)command.get(name)).doGet(req, resp); }
		 */
		
		
		//요청이 무엇인지 구분?
		//command에서 해당 요청에 맞는 객체 가져오기
		//가져온 객체에 알맞은 doXXX메서드 호출하기
		
	}
}

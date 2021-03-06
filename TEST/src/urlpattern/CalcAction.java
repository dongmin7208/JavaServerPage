package urlpattern;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet(urlPatterns = "/calc")
public class CalcAction implements CommandAction {
	
//	protected void doGet(HttpServletRequest req,
//			HttpServletResponse resp)
//	throws ServletException, IOException {
//		resp.setContentType("text/html; charset=UTF-8");
//		String form = "<html><head><title>국영수</title></head>" 
//					+"<body><form method='post' action="+req.getContextPath()+"/calc>"
//					+"국어점수 <input type='text' name='kor'> <br>"
//					+"영어점수 <input type='text' name='eng'> <br>"
//					+"수학점수 <input type='text' name='mat'> <br>"
//					+"<input type='submit' value='전송'>"
//					+"</form></body></html>";
//		
//		PrintWriter pw = resp.getWriter();
//		pw.print(form);
//	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		resp.setContentType("text/html; charset=UTF-8");
		int kor = Integer.parseInt(req.getParameter("kor"));
		int eng = Integer.parseInt(req.getParameter("eng"));
		int mat = Integer.parseInt(req.getParameter("mat"));
		double avg = (kor+eng+mat)/3.0;
		req.setAttribute("avg", avg);
		
		//page, request, session, application 객체를 활용해서 값을 유지시킴
//		PrintWriter pw = resp.getWriter();
//		pw.print("<html><head><title>합계는</title></head><body>");
//		pw.print(sum+"의 평균은 "+avg+"입니다.");
//		pw.print("</body></html>");
	}
	
	@Override
	public String processRequest(
			HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String method = req.getMethod();
		if(method.equalsIgnoreCase("get")) {
//			doGet(req,resp);
			return "/calcForm.jsp";
		}
		else if(method.equalsIgnoreCase("post")) {
			doPost(req,resp);
			return "/calc.jsp";
		}
		return null;
	}
}

package urlpattern;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns = "/info")
public class InfoAction implements CommandAction {

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		resp.setContentType("text/html; charset=UTF-8");
//		
//		PrintWriter pw = resp.getWriter();
//		
//		pw.print("<html><head><title>이름 나이</title></head><body>");
//		pw.print("학생입니다.");
//		pw.print("<form method='post' action="+req.getContextPath()+"/info>");
//		pw.print("<input type='submit' value='확인'></form>");
//		pw.print("</body></html>");
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	@Override
	public String processRequest(
			HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
//		String method = req.getMethod();
//		if(method.equalsIgnoreCase("get")) {
//			doGet(req, resp);
//		}
//		else if(method.equalsIgnoreCase("post")) {
//			doPost(req,resp);
//		}
//		return null;
		return "/info.jsp";
	}
}


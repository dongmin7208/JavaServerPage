package urlpattern;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns = "/now")
public class NowAction implements CommandAction {

//	protected void doGet(
//			HttpServletRequest req,
//			HttpServletResponse resp)
//					throws ServletException, IOException {
//		//응답헤더에 필요한 설정추가
//		resp.setContentType("text/html; charset=UTF-8");
//		
//		PrintWriter pw = new PrintWriter(resp.getWriter());
//		
//		//응답 바디에 추가할 내용지정
//		pw.print("<html><head><title>현재시간</title></head><body>");
//		pw.print("현재시간은");
//		pw.print(new java.util.Date());
//		pw.print("입니다");
//		pw.print("</body></html>");
//}
	
	@Override
	public String processRequest(
			HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
//		doGet(req, resp);
//		return null;
		return "now.jsp";
	}
}


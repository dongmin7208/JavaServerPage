package servletex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿?
//클라이언트의 요청을 처리하는 기능을 가진 클래스 (객체)
public class NowServlet	extends HttpServlet {
	@Override
	protected void doGet(
			HttpServletRequest req,
			HttpServletResponse resp)
					throws ServletException, IOException {
		//응답헤더에 필요한 설정추가
		resp.setContentType("text/html; charset=UTF-8");
		
		PrintWriter pw = new PrintWriter(resp.getWriter());
		
		//응답 바디에 추가할 내용지정
		pw.print("<html><head><title>현재시간</title></head><body>");
		pw.print("현재시간은");
		pw.print(new java.util.Date());
		pw.print("입니다");
		pw.print("</body></html>");
		
	}
}

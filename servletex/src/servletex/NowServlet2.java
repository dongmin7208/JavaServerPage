package servletex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿?
//클라이언트의 요청을 처리하는 기능을 가진 클래스 (객체)
public class NowServlet2	extends HttpServlet {

	@Override
	protected void doGet(
			HttpServletRequest req,
			HttpServletResponse resp)
					throws ServletException, IOException {
		//응답헤더에 필요한 설정추가
		
		PrintWriter pw = new PrintWriter(resp.getWriter());
		int n1= Integer.parseInt(req.getParameter("n1"));
		int n2= Integer.parseInt(req.getParameter("n2"));
		int n3= Integer.parseInt(req.getParameter("n3"));
		double sum = n1+n2+n3;
		double avg = sum/3.0;
		//응답 바디에 추가할 내용지정
		pw.print("<html><head><title>합계는</title></head><body>");
		pw.print(sum+"의 평균은 "+avg+"입니다.");
		pw.print("</body></html>");
		
		
		
	}
}

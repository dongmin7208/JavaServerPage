package servletex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

//서블릿 등록 및 초기화 파라미터 설정 적용
@WebServlet(
		urlPatterns="/init",
		initParams = {
				@WebInitParam(name="url", value="jdbc:oracle:thin:@192.168.44.128:1521:orcl"),
				@WebInitParam(name="account", value="c##tester2"),
				@WebInitParam(name="password", value="1234")
				}
)
public class InitParamEx extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response)
	throws ServletException, IOException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		ServletConfig config = this.getServletConfig();
//		String url = config.getInitParameter("url");
		String url = this.getServletContext().getInitParameter("url");
		String account = config.getInitParameter("account");
		String password = config.getInitParameter("password");
		System.out.println(url + " " + account + " " + password);
		
		try {
			conn = DriverManager.getConnection(url, account, password);
			System.out.println("Create new Connection!");
			String query = "select * from v$version";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			PrintWriter out = response.getWriter();
			while(rs.next()) {
				out.println(rs.getString(1));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) {rs.close();}
				if(stmt != null) {stmt.close();}
				if(conn != null) {conn.close();}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}

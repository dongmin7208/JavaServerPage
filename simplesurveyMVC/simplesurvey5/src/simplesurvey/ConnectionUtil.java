package simplesurvey;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ConnectionUtil {
	private static DataSource ds = null;
	static {
		try{
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/myOracle");
		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println("Connection Util 객체 생성");
	}
	public static Connection getConnection() throws SQLException{
		return ds.getConnection();
	}
}

package jsp_jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class TempMemberDAO {
//	private final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
//	private final String JDBC_URL = "jdbc:oracle:thin:@192.168.44.128:1521:orcl";
//	private final String ID = "c##tester2";
//	private final String PW = "1234";
	private ConnectionPool pool = null;
//	public TempMemberDAO() {
//		try {
//			Class.forName(JDBC_DRIVER);
//		}catch(ClassNotFoundException e) {
//			System.out.println("드라이버 로딩 실패!");
//			e.printStackTrace();
//		}
//	}
	public TempMemberDAO() {
	try {
		pool = ConnectionPool.getInstance();
	}catch(Exception e) {
		System.out.println("Error : Connection load failed!");
	}
}

	public Vector<TempMemberVO> getMemberList(){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector<TempMemberVO> memList = new Vector<TempMemberVO>();
		try {
//			conn = DriverManager.getConnection(JDBC_URL, ID, PW);
			conn = pool.getConnection();
			String query = "select * from TEMPMEMBER";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				TempMemberVO tmp = new TempMemberVO();
				tmp.setId(rs.getString("id"));
				tmp.setPassword(rs.getString("password"));
				tmp.setName(rs.getString("name"));
				tmp.setMem_num1(rs.getString("mem_num1"));
				tmp.setMem_num2(rs.getString("mem_num2"));
				tmp.setPhone(rs.getString("phone"));
				tmp.setZipcode(rs.getString("zipcode"));
				tmp.setAddress(rs.getString("address"));
				tmp.setJob(rs.getString("job"));
				memList.add(tmp);
			}	
		} catch(Exception e) {
			System.out.println("Exception : " + e);
		} finally {
			if(rs != null) try {rs.close();}catch(Exception e) {}
			if(stmt != null) try {stmt.close();}catch(Exception e) {}
//			if(conn != null) try {conn.close();}catch(Exception e) {}
	if(conn != null) try {pool.releaseConnection(conn);}catch(Exception e) {}
		}
		return memList;
	}
}

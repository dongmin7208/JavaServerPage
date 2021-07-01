package jsp_jdbc;

import java.security.spec.DSAGenParameterSpec;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DAO {
	Context init = null;
	DataSource ds = null;
public DAO() {
	try {
		init = (Context) new InitialContext();
		ds = (DataSource)init.lookup("java:comp/env/jdbc/myOracle");
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
			conn = ds.getConnection();
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
			if(conn != null) try {conn.close();}catch(Exception e) {}
		}
		return memList;
	}
}

package simplesurvey;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SurveyDao {
	public SurveyDao(){
		System.out.println("Dao객체 생성");
	}
	
	public void insert(SurveyDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "lkc";
		String pw = "1234";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			String sql = "insert into SURVEYDATA values(SURVEYDATA_SEQ.nextval, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			/* 요청 파라미터가 세팅된 객체에서 값을 꺼내서 활용한다. */
			pstmt.setInt(1, dto.getAge());
			pstmt.setString(2, dto.getGender());
			pstmt.setInt(3, dto.getSalary());
			pstmt.setInt(4, dto.getSalarydesired());
			int ret = pstmt.executeUpdate();
			System.out.println(ret+"개의 행이 삽입되었습니다.");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			}catch(Exception e1){
				e1.printStackTrace();
			}
		}
	}
	public ArrayList<SurveyDto> getSurveyAll(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SurveyDto> result = new ArrayList<SurveyDto>();
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "lkc";
		String pw = "1234";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			String sql = "select * from SURVEYDATA";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				SurveyDto tmp = new SurveyDto();
				tmp.setNum(rs.getInt(1));
				tmp.setAge(rs.getInt("age"));
				tmp.setGender(rs.getString(3));
				tmp.setSalary(rs.getInt("Salary"));
				tmp.setSalarydesired(rs.getInt(5));
				result.add(tmp);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			}catch(Exception e1){
				e1.printStackTrace();
			}
		}
		return result;
	}
}

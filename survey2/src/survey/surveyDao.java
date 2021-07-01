package survey;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class surveyDao {
	private static surveyDao instance = null;
	private surveyDao() {}
	public static surveyDao getInstance() {
		synchronized (surveyDao.class) {
			if(instance == null) {
				instance = new surveyDao();
			}
		}
		return instance;
	}
	
	
	public void resultScore(surveyDto score)  {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		
		try {
			sql = "insert into SURVEY" 
					+ "(NUM, GENDER, AGE, AREA, ACADEMIC, EXPERIENCE, SCORE, NAME)" 
					+ "values(SURVEY_SEQ.nextval, ?, ?, ?, ?, ?, ?, ?)";
			
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, score.getGender());
			pstmt.setString(2, score.getAge());
			pstmt.setString(3, score.getArea());
			pstmt.setString(4, score.getAcademic());
			pstmt.setString(5, score.getExperience());
			pstmt.setInt(6, score.getScore());
			pstmt.setString(7, score.getName());
			pstmt.executeUpdate();	
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(rs != null) try {rs.close();} catch (SQLException e) {}
			if(pstmt != null) try {pstmt.close();} catch (SQLException e) {}
			if(conn != null) try {conn.close();} catch (SQLException e) {}
		}
		

	}
	
	public surveyDto updateGetScore(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		surveyDto survey = null;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select * from SURVEY where NUM = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				survey = new surveyDto();
				survey.setNum(rs.getInt("num"));
				survey.setName(rs.getString("name"));
				survey.setGender(rs.getString("gender"));
				survey.setAge(rs.getString("age"));
				survey.setArea(rs.getString("area"));
				survey.setAcademic(rs.getString("academic"));
				survey.setExperience(rs.getString("experience"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null) try { rs.close();} catch (SQLException e) {}
			if(pstmt != null) try { pstmt.close();} catch (SQLException e) {}
			if(conn != null) try { conn.close();} catch (SQLException e) {}
		}
		return survey;
	}
	
	
	public ArrayList<surveyDto> getSurveyAll(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<surveyDto> result = new ArrayList<surveyDto>();
		try {
			conn = ConnUtil.getConnection();
			String sql = "select GENDER, AGE, AREA, SCORE, NAME from SURVEY";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				surveyDto tmp = new surveyDto();
				tmp.setGender(rs.getString("gender"));
				tmp.setAge(rs.getString("age"));
				tmp.setArea(rs.getString("area"));
				tmp.setScore(rs.getInt("score"));
				tmp.setName(rs.getString("name"));
				result.add(tmp);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
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

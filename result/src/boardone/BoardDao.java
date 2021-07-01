package boardone;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class BoardDao {
	private static BoardDao instance = null;
	private BoardDao() {}
	public static BoardDao getInstance() {
		if(instance == null) {
			synchronized (BoardDao.class) {
				instance = new BoardDao();
			}
		}
		return instance;
	}
	//이제부터 여기에 게시판에서 필요한 작업 기능들을 메서드로 추가하게 된다.
	
	
	public void insertArticle(BoardDto article){
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int num = article.getNum();
        int ref = article.getRef();
        int step = article.getStep();
        int depth = article.getDepth();
        int number = 0;
        String sql = "";
        try{
            conn = ConnUtil.getConnection();
            pstmt = conn.prepareStatement("select max(NUM) from BOARD");
            rs = pstmt.executeQuery();
            if(rs.next()){
                number = rs.getInt(1) + 1;
            }
            else{
                number = 1;
            }
            if(num != 0){ //답 글일 경우
                sql = "update BOARD set STEP=STEP+1 where REF = ? and STEP > ?";
                pstmt.close();
                pstmt = conn.prepareStatement(sql);
                pstmt.setInt(1, ref);
                pstmt.setInt(2,  step);
                pstmt.executeQuery();
                step++;
                depth++;
            }
            else{//새 글일 경우
                ref = number;
                step = 0;
                depth = 0;
            }
            //쿼리 작성
            sql = "insert into BOARD"
                    + "(NUM, WRITER, EMAIL, SUBJECT, PASS, "
                    + "REGDATE, REF, STEP, DEPTH, CONTENT, IP) "
                    + "values(BOARD_SEQ.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt.close();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, article.getWriter());
            pstmt.setString(2, article.getEmail());
            pstmt.setString(3, article.getSubject());
            pstmt.setString(4, article.getPass());
            pstmt.setTimestamp(5, article.getRegdate());
            pstmt.setInt(6, ref);
            pstmt.setInt(7, step);
            pstmt.setInt(8, depth);
            pstmt.setString(9, article.getContent());
            pstmt.setString(10, article.getIp());
            pstmt.executeQuery();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(rs != null) try { rs.close(); } catch (SQLException e){}
            if(pstmt != null) try { pstmt.close(); } catch (SQLException e){}
            if(conn != null) try { conn.close(); } catch (SQLException e){}
        }
    }
	
	public int getArticleCount(){
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    int x = 0;
	    try{
	        conn = ConnUtil.getConnection();
	        pstmt = conn.prepareStatement("select count(*) from BOARD");
	        rs = pstmt.executeQuery();
	        if(rs.next()){
	            x = rs.getInt(1);
	        }
	    } catch(Exception e){
	        e.printStackTrace();
	    } finally{
	        if(rs != null) try { rs.close(); } catch (SQLException e){}
	        if(pstmt != null) try { pstmt.close(); } catch (SQLException e){}
	        if(conn != null) try { conn.close(); } catch (SQLException e){}
	    }
	    return x;
	}

	
	 public List<BoardDto> getArticles(/* 수정<1> */){
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        List<BoardDto> articleList = null;
	        try{
	            conn = ConnUtil.getConnection();
	            /* 수정<2> */
	            pstmt = conn.prepareStatement(
	                                        "select * from BOARD order by NUM desc"); //수정<3>
	            rs = pstmt.executeQuery();
	            if(rs.next()){
	                articleList = new ArrayList<BoardDto>(); //수정<4>
	                do {
	                    BoardDto article = new BoardDto();
	                    article.setNum(rs.getInt("num"));
	                    article.setWriter(rs.getString("writer"));
	                    article.setEmail(rs.getString("email"));
	                    article.setSubject(rs.getString("subject"));
	                    article.setPass(rs.getString("pass"));
	                    article.setRegdate(rs.getTimestamp("regdate"));
	                    article.setReadcount(rs.getInt("readcount"));
	                    article.setRef(rs.getInt("ref"));
	                    article.setStep(rs.getInt("step"));
	                    article.setDepth(rs.getInt("depth"));
	                    article.setContent(rs.getString("content"));
	                    article.setIp(rs.getString("ip"));
	                    articleList.add(article);
	                } while(rs.next());
	            }
	        } catch(Exception e){
	            e.printStackTrace();
	        } finally{
	            if(rs != null) try { rs.close(); } catch (SQLException e){}
	            if(pstmt != null) try { pstmt.close(); } catch (SQLException e){}
	            if(conn != null) try { conn.close(); } catch (SQLException e){}
	        }
	        return articleList;
	    }
	 
	 
	 
	 public BoardDto getArticle(int num){
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        BoardDto article = null;
	        try{
	            conn = ConnUtil.getConnection();
	            pstmt = conn.prepareStatement(
	                    "update BOARD set READCOUNT=READCOUNT+1 where NUM = ?");
	            pstmt.setInt(1, num);
	            pstmt.executeQuery();
	            pstmt.close();
	            pstmt = conn.prepareStatement("select * from BOARD where NUM = ?");
	            pstmt.setInt(1, num);
	            rs = pstmt.executeQuery();
	            if(rs.next()){
	                article = new BoardDto();
	                article.setNum(rs.getInt("num"));
	                article.setWriter(rs.getString("writer"));
	                article.setEmail(rs.getString("email"));
	                article.setSubject(rs.getString("subject"));
	                article.setPass(rs.getString("pass"));
	                article.setRegdate(rs.getTimestamp("regdate"));
	                article.setReadcount(rs.getInt("readcount"));
	                article.setRef(rs.getInt("ref"));
	                article.setStep(rs.getInt("step"));
	                article.setDepth(rs.getInt("depth"));
	                article.setContent(rs.getString("content"));
	                article.setIp(rs.getString("ip"));
	            }
	        } catch(Exception e){
	            e.printStackTrace();
	        } finally{
	            if(rs != null) try { rs.close(); } catch (SQLException e){}
	            if(pstmt != null) try { pstmt.close(); } catch (SQLException e){}
	            if(conn != null) try { conn.close(); } catch (SQLException e){}
	        }
	        return article;
	    }
	 
	 public BoardDto updateGetArticle(int num){
		    Connection conn = null;
		    PreparedStatement pstmt = null;
		    ResultSet rs = null;
		    BoardDto article = null;
		    try{
		        conn = ConnUtil.getConnection();
		        pstmt = conn.prepareStatement("select * from BOARD where NUM = ?");
		        pstmt.setInt(1, num);
		        rs = pstmt.executeQuery();
		        if(rs.next()){
		            article = new BoardDto();
		            article.setNum(rs.getInt("num"));
		            article.setWriter(rs.getString("writer"));
		            article.setEmail(rs.getString("email"));
		            article.setSubject(rs.getString("subject"));
		            article.setPass(rs.getString("pass"));
		            article.setRegdate(rs.getTimestamp("regdate"));
		            article.setReadcount(rs.getInt("readcount"));
		            article.setRef(rs.getInt("ref"));
		            article.setStep(rs.getInt("step"));
		            article.setDepth(rs.getInt("depth"));
		            article.setContent(rs.getString("content"));
		            article.setIp(rs.getString("ip"));
		        }
		    } catch(Exception e){
		        e.printStackTrace();
		    } finally{
		        if(rs != null) try { rs.close(); } catch (SQLException e){}
		        if(pstmt != null) try { pstmt.close(); } catch (SQLException e){}
		        if(conn != null) try { conn.close(); } catch (SQLException e){}
		    }
		    return article;
		}

	 
	 public int updateArticle(BoardDto article){
		    Connection conn = null;
		    PreparedStatement pstmt = null;
		    ResultSet rs = null;
		    String dbpassword = "";
		    String sql = "";
		    int result = -1; //결과 값
		    try{
		        conn = ConnUtil.getConnection();
		        pstmt = conn.prepareStatement("select PASS from BOARD where NUM = ?");
		        pstmt.setInt(1, article.getNum());
		        rs = pstmt.executeQuery();
		        if(rs.next()){
		            dbpassword = rs.getString("pass");//비밀번호 비교
		            if(dbpassword.equals(article.getPass())){
		                sql = "update BOARD set WRITER=?,EMAIL=?,"
		                    + "SUBJECT=?,CONTENT=? where NUM=?";
		                pstmt.close();
		                pstmt = conn.prepareStatement(sql);
		                pstmt.setString(1, article.getWriter());
		                pstmt.setString(2, article.getEmail());
		                pstmt.setString(3, article.getSubject());
		                pstmt.setString(4, article.getContent());
		                pstmt.setInt(5, article.getNum());
		                pstmt.executeQuery();
		                result = 1; //수정 성공
		            } else {
		                result = 0; //수정 실패
		            }
		        }
		    } catch(Exception e){
		        e.printStackTrace();
		    } finally{
		        if(rs != null) try { rs.close(); } catch (SQLException e){}
		        if(pstmt != null) try { pstmt.close(); } catch (SQLException e){}
		        if(conn != null) try { conn.close(); } catch (SQLException e){}
		    }
		    return result;
		}

	 
	 public int deleteArticle(int num, String pass){
		    Connection conn = null;
		    PreparedStatement pstmt = null;
		    ResultSet rs = null;
		    String dbpasswd = "";
		    int result = -1; //결과 값
		    try{
		        conn = ConnUtil.getConnection();
		        pstmt = conn.prepareStatement(
		                "select PASS from BOARD where NUM=?");
		        pstmt.setInt(1, num);
		        rs = pstmt.executeQuery();
		        if(rs.next()){
		            dbpasswd = rs.getString("pass");
		            if(dbpasswd.equals(pass)){
		                pstmt.close();
		                pstmt = conn.prepareStatement("delete from BOARD where NUM=?");
		                pstmt.setInt(1, num);
		                pstmt.executeQuery();
		                result = 1; //글삭제 성공
		            } else {
		                result = 0; //비밀번호 틀림
		            }
		        }
		    }catch(Exception e){
		        e.printStackTrace();
		    } finally{
		        if(rs != null) try { rs.close(); } catch (SQLException e){}
		        if(pstmt != null) try { pstmt.close(); } catch (SQLException e){}
		        if(conn != null) try { conn.close(); } catch (SQLException e){}
		    }
		    return result;
		}


}

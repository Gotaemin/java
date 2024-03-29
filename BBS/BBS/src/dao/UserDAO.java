package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import static db.JdbcUtil.*;
import vo.User;

public class UserDAO {
	Connection conn = null;
	
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public int join(User user) {
		String sql = "insert into user values(?,?,?,?,?)";
		
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			
			System.out.println("DAO : "+user.getUserID()+user.getUserPassword()+user.getUserName()+
					user.getUserGender()+user.getUserEmail());
			
			
			int result = pstmt.executeUpdate();
			
			System.out.println("반환값:  "+result);
			
			
			return result;  //반영된 레코드의 수 리턴
			
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return -1;   //데이터베이스 오류
	}
	
	
	public int login(String userID,String userPassword) {
		String sql = "select userPassword from user where userID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;	//로그인 성공
				}else {
					return 0;	//비밀번호 불일치
				}
			}
			return -1;	//아이디 존재 X
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return -2;	//DB 오류
	}
}

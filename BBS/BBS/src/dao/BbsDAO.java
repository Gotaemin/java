package dao;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.Bbs;

public class BbsDAO {
	Connection conn = null;
	
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public Bbs getBbs(int bbsID) {
		String sql = "select * from bbs where bbsID = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Bbs bbs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
			}
			return bbs;
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return null;
	}
	
	public boolean nextPage(int pageNumber) {
		conn = getConnection();
		String sql = "select * from bbs where bbsAvailable = 1 order by bbsID desc limit 10";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				return true;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn);
			close(rs);
			close(pstmt);
		}
		
		return false;
	}
	
	public ArrayList<Bbs> bbsListSelect(int pageNumber){
		String sql = "select * from bbs where bbsID < ? and bbsAvailable = 1 order by bbsID desc limit 10";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Bbs bbs = null;
		ArrayList<Bbs> bbsList = new ArrayList<Bbs>();
	
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber-1)*10);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				bbs = new Bbs();
				bbs.setBbsID(rs.getInt("bbsID"));
				bbs.setBbsTitle(rs.getString("bbsTitle"));
				bbs.setUserID(rs.getString("userID"));
				bbs.setBbsDate(rs.getString("bbsDate"));
				
				bbsList.add(bbs);
//				System.out.println("bbsDAO : " +bbs.toString());
			}
			
			return  bbsList;
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return null;
	}
	
	public String getDate() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select now()";
				
		try {
			pstmt = conn.prepareStatement(sql);
			rs =pstmt.executeQuery();
			
			if(rs.next()) {
				return rs.getString(1);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return "";
	}
	
	public int getNext() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select bbsID from bbs order by bbsID desc";
				
		try {
			pstmt = conn.prepareStatement(sql);
			rs =pstmt.executeQuery();
			
			if(rs.next()) {
				return rs.getInt(1) +1 ;
			}
			return 1;  //씌여저 있는 게시글이 없는경우
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return -1; //db오류발생
	}
	
	
	public int write(String bbsTitle,String userID,String bbsContent) {
		PreparedStatement pstmt = null;
		
		String sql = "insert into bbs values(?,?,?,?,?,?)";
				
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, bbsContent);
			pstmt.setInt(6, 1);
			
			return pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return -1; //db오류발생
	}
}

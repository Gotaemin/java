package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.Movie;
import static db.JdbcUtil.*;

public class MovieDAO {
	Connection conn = null;
	
	public void setConnection(Connection conn) {
		this.conn = conn;
	}

	public ArrayList<Movie> selectMovieList() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<Movie> movieList = null;
		
		try {
			pstmt = conn.prepareStatement("select * from movielist");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				movieList = new ArrayList<Movie>();
				
				do {
					movieList.add(new Movie(rs.getString("title"),
											rs.getInt("visitors"),
											rs.getString("actor"),
											rs.getString("image")));
				}while(rs.next());
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return movieList;
	}
	
	public Movie selectMovie(String inputTitle) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Movie movie = null;
		
		try {
			pstmt = conn.prepareStatement("select * from movielist where title=?");
			pstmt.setString(1,inputTitle);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				movie = new Movie(rs.getString("title"),rs.getInt("visitors"),rs.getString("actor"),rs.getString("image"));
			}
			
			//System.out.println(movie.getTitle() + movie.getVisitors() + rs.getString("actor"));
		
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return movie;
	}

	public ArrayList<Movie> setAlignmentMovie(int type) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Movie> movieList = new ArrayList<Movie>();
		Movie movie = null;
		
		String sql = "select * from movielist order by ? desc";		
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, type);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{			
				movie = new Movie(rs.getString("title"), rs.getInt("visitors"), rs.getString("actor"), rs.getString("image"));
				movieList.add(movie);
			}
			

			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return movieList;
	}

}

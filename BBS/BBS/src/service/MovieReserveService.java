package service;

import java.sql.Connection;
import java.util.ArrayList;

import dao.MovieDAO;

import static db.JdbcUtil.*;
import vo.Movie;
import vo.Theater;

public class MovieReserveService {
	
	public ArrayList<Movie> getTitle() {
		
		Connection conn = getConnection();
		MovieDAO movieDAO = new MovieDAO();
		movieDAO.setConnection(conn);
		
		ArrayList<Movie> getTitle = movieDAO.getTitle();  
		
		close(conn);
		
		return getTitle;
	}

	public ArrayList<Theater> getLocal() {
		Connection conn = getConnection();
		MovieDAO movieDAO = new MovieDAO();
		
		movieDAO.setConnection(conn);
		ArrayList<Theater> getLocal = movieDAO.getTheater();
		
		return getLocal;
	}

}

package service;

import java.sql.Connection;
import java.util.ArrayList;

import dao.MovieDAO;

import static db.JdbcUtil.*;
import vo.Movie;

public class MovieAlignmentService {

	public ArrayList<Movie> movielignment(String alignment) {
		MovieDAO movieDAO = new MovieDAO();
		Connection conn = getConnection();
		movieDAO.setConnection(conn);
		
		int type = Integer.parseInt(alignment);
		
		ArrayList<Movie> movieList = movieDAO.setAlignmentMovie(type);
		close(conn);
		return movieList;
	}


}

package service;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import dao.MovieDAO;
import vo.Movie;

public class MovieSearchService {
	
	public Movie searchMovie(String inputTitle){
		MovieDAO movieDAO = new MovieDAO();
		Connection conn = getConnection();
		
		movieDAO.setConnection(conn);
		Movie movie = movieDAO.selectMovie(inputTitle);
		
		
		close(conn);
		
		return movie;
	}
}

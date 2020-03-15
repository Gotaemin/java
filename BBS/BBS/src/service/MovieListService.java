package service;

import java.sql.Connection;
import java.util.ArrayList;

import dao.MovieDAO;
import vo.Movie;
import static db.JdbcUtil.*;

public class MovieListService {

	public ArrayList<Movie> getMovieList() {
		MovieDAO movieDAO = new MovieDAO();
		Connection conn = getConnection();
		
		movieDAO.setConnection(conn);
		ArrayList<Movie> movieList = movieDAO.selectMovieList();
		
		close(conn);
		return movieList;

	}

}

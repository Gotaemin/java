package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MovieListService;
import vo.Movie;

public class MovieListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MovieListService movieListService = new MovieListService();
		ArrayList<Movie> movieList = movieListService.getMovieList();
		
		request.setAttribute("movieList", movieList);
		
		ActionForward forward = new ActionForward("MovieList.jsp",false);
			
		return forward;
	}

}

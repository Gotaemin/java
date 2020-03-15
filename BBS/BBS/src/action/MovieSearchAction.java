package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import service.MovieSearchService;
import vo.Movie;

public class MovieSearchAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		Movie movie = new Movie();
		MovieSearchService movieSearchService = new MovieSearchService();
		
		String inputTitle = request.getParameter("title");
		movie = movieSearchService.searchMovie(inputTitle);
		
		request.setAttribute("movie",movie);
		
		forward = new ActionForward("MovieSearchResult.jsp",false);
		
		
		return forward;
		
	}

}

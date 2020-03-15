package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MovieAlignmentService;
import vo.Movie;

public class MovieAlignmentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MovieAlignmentService movieAlignmentService = new MovieAlignmentService();
		
		String alignment = request.getParameter("alignment");
		//service »£√‚
		ArrayList<Movie> movieList = movieAlignmentService.movielignment(alignment);
		
		request.setAttribute("movieList",movieList);
		
		
		
		
		ActionForward forward = new ActionForward("MovieList.jsp", false);
//		ActionForward forward = new ActionForward("MovieMain.jsp", true);
		
		return forward;
	}

}

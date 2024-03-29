package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MovieReserveService;
import vo.Movie;
import vo.Theater;

public class MovieReserveAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MovieReserveService movieReserveService = new MovieReserveService();
		
		ArrayList<Movie> movieTitle = movieReserveService.getTitle();
		ArrayList<Theater> theaterLocal = movieReserveService.getLocal();
		
		request.setAttribute("movieTitle", movieTitle);
		request.setAttribute("theaterLocal", theaterLocal);
		
		ActionForward forward = new ActionForward("movieReserve.jsp",false);
		
		return forward;
	}

}

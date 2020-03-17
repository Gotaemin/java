package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.SelectCityService;
import vo.Theater;

public class SelectCityAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SelectCityService selectCityService = new SelectCityService();
		String city = request.getParameter("city");
		
		ArrayList<Theater> theaterLocal = selectCityService.getLocal(city);
		
		request.setAttribute("theaterLocal", theaterLocal);
		
		ActionForward forward = new ActionForward("movieReserve.jsp",false);
		
		return forward;
	}

}

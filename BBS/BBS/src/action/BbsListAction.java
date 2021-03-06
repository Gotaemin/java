package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BbsListService;
import vo.Bbs;

public class BbsListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		
//		System.out.println("Action_pageNumber: " + pageNumber);
		
		
		BbsListService bbsListService = new BbsListService();
		ArrayList<Bbs> bbsList = bbsListService.bbsListSelect(pageNumber);
		
		request.setAttribute("bbsList", bbsList);
	
		ActionForward forward =  new ActionForward("bbs.jsp", false);
				
		return forward;
	}

}

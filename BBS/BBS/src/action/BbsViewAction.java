package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BbsViewService;
import vo.Bbs;

public class BbsViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int bbsID = Integer.parseInt(request.getParameter("bbsID"));
		
		BbsViewService bbsViewService = new BbsViewService();
		Bbs bbs = bbsViewService.getBbs(bbsID);
		
		request.setAttribute("bbs", bbs);
		request.setAttribute("bbsID", bbs.getBbsID());
		
		ActionForward forward = new ActionForward("view.jsp", false);
		return forward;
	}

}

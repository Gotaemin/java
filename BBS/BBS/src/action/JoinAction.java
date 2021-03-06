package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.JoinService;

public class JoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		String userName = request.getParameter("userName");
		String userGender = request.getParameter("userGender");
		String userEmail = request.getParameter("userEmail");
		
		System.out.println("Action : "+userID+" "+userPassword+" "+userName+" "+userGender+" "+userEmail);
		
		
		JoinService joinService = new JoinService();
		int result = joinService.joinUpdate(userID,userPassword,userName,userGender,userEmail);
		
		request.setAttribute("result", result);
		
		ActionForward forward = new ActionForward("join.jsp",false);
		
		
		return forward;
	}

}

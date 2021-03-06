package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.LoginService;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		
		LoginService loginService = new LoginService();
		int result = loginService.loginCheck(userID,userPassword);
		
		request.setAttribute("result", result);
		
		ActionForward forward = new ActionForward("loginAction.jsp", false);
		
		return forward;
	}

}

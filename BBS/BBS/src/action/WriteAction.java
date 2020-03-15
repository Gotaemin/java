package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.Session;

import service.WriteService;
import vo.User;

public class WriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String bbsTitle = request.getParameter("bbsTitle");
		String bbsContent = request.getParameter("bbsContent");
		String userID = request.getParameter("userID");
		
		
		System.out.println(userID);
	
	
		WriteService writeService = new WriteService();
		
		int result = writeService.writeResult(bbsTitle,bbsContent,userID);
		request.setAttribute("result", result);
		
		ActionForward forward = new ActionForward("write.jsp",false);
		
		return forward;
	}

}

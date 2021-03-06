package service;

import java.sql.Connection;

import dao.UserDAO;
import vo.User;
import static db.JdbcUtil.*;

public class JoinService {

	public int joinUpdate(String userID, String userPassword, String userName, String userGender, String userEmail) {
		Connection conn = getConnection();
		UserDAO userDAO = new UserDAO();
		userDAO.setConnection(conn);
		
		System.out.println("Service : "+userID+" "+userPassword+" "+userName+" "+userGender+" "+userEmail);
		
		if(userID.equals("") || userPassword.equals("") || userName.equals("") || userGender.equals("") || userEmail.equals("")) {
			System.out.println("���߸���");
			return 0;
		}
		
		User user = new User();
		user.setUserID(userID);
		user.setUserPassword(userPassword);
		user.setUserName(userName);
		user.setUserGender(userGender);
		user.setUserEmail(userEmail);
		
		int result = userDAO.join(user);
		close(conn);
		return result;
		
	}

}

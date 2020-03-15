package service;

import java.sql.Connection;

import dao.UserDAO;

import static db.JdbcUtil.*;
public class LoginService {

	public int loginCheck(String userID,String userPassword) {
		Connection conn = getConnection();
		UserDAO userDAO = new UserDAO();
		userDAO.setConnection(conn);
		
		int result = userDAO.login(userID, userPassword);
		close(conn);
		return result;
	}

}

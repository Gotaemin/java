package service;

import static db.JdbcUtil.*;
import java.sql.Connection;

import dao.BbsDAO;

public class WriteService {

	public int writeResult(String bbsTitle, String bbsContent,String userID) {
		Connection conn = getConnection();
		BbsDAO bbsDAO = new BbsDAO();

		if(bbsTitle.equals("") || bbsContent.equals("")) {
			return 0;
		}
		
		bbsDAO.setConnection(conn);
		int result = bbsDAO.write(bbsTitle, userID, bbsContent);
		close(conn);
		return result;
	}

}

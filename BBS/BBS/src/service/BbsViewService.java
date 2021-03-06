package service;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.BbsDAO;
import vo.Bbs;

public class BbsViewService {

	public Bbs getBbs(int bbsID) {
		Connection conn = getConnection();
		BbsDAO bbsDAO = new BbsDAO();
		bbsDAO.setConnection(conn);
		
		Bbs bbs = bbsDAO.getBbs(bbsID);
		
		close(conn);
		return bbs;
	}

}

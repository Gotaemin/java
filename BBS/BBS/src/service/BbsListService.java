package service;

import java.sql.Connection;
import java.util.ArrayList;

import dao.BbsDAO;

import static db.JdbcUtil.*;
import vo.Bbs;

public class BbsListService {
	public ArrayList<Bbs> bbsListSelect(int pageNumber) {
		Connection conn = getConnection();
		BbsDAO bbsDAO = new BbsDAO();
		bbsDAO.setConnection(conn);
		
		ArrayList<Bbs> bbsList = bbsDAO.bbsListSelect(pageNumber);
		close(conn);
		return bbsList;
	}

}

package service;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import dao.MovieDAO;
import vo.Theater;
public class SelectCityService {

	public ArrayList<Theater> getLocal(String city) {
		Connection conn = getConnection();
		MovieDAO movieDAO = new MovieDAO();
		
		movieDAO.setConnection(conn);
		
		if(city.equals("seoul")) {
			city = "����";
		}else if(city.equals("gyoung")) {
			city = "���";
		}else if(city.equals("incheon")) {
			city = "��õ";
		}else if(city.equals("daegu")) {
			city = "�뱸";
		}else if(city.equals("busan")) {
			city = "�λ�";
		}
		
		//System.out.println("Service: "+ city);
		
		ArrayList<Theater> getLocal = movieDAO.getLocal(city); 
		
		
		close(conn);
		return getLocal;
	}

}

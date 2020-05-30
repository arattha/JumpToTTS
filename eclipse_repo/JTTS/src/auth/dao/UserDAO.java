package auth.dao;

import java.sql.SQLException;

import auth.vo.UserVO;
import framework.jdbc.DBMng;

public class UserDAO {

	public boolean insertNewUser(UserVO dao, String pw) {
		DBMng db = null;
		
		try {
			db = new DBMng();
			db.setAutoCommit(false);
			
			db.setQuery("insert into user_info values (null, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1, 0, ?)");
			db.setString(dao.getId());
			db.setString(dao.getName());
			db.setString(dao.getNickname());
			db.setString(dao.getHomeAddr());
			db.setString(dao.getEmailAddr());
			db.setString(dao.getPhoneNumber());
			db.setDate(dao.getBirth());
			db.setString(dao.getGender()==1?"male":"female");
			db.setString("GEN_USER");
			db.setDate(dao.getRegdate());
			db.execute();
			
			db.setQuery("insert into user_pwd values (null, ?, ?, ?)");
			db.setString(dao.getId());
			db.setString(pw);
			db.setDate(dao.getRegdate());
			db.execute();
			
			db.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			db.close();
		}
		
		return true;
	}
}

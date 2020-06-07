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
	
	public UserVO getUserInfo(String id) {
		DBMng db = null;
		
		try {
			db = new DBMng();
			db.setQuery("select * from user_info where id=?");
			db.setString(id);
			db.execute();
			
			if (db.next()) {
				UserVO user = new UserVO(id, db.getString("name"), db.getString("nickname"));
				user.setHomeAddr(db.getString("home_address"));
				user.setEmailAddr(db.getString("email_address"));
				user.setPhoneNumber(db.getString("phone_number"));
				user.setBirth(db.getDate("birth"));
				user.setGender(db.getString("gender").equals("male")?1:2);
				user.setAuthCode(db.getString("auth_code"));
				return user;
			}
			else 
				return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			db.close();
		}
	}
}

package auth.dao;

import java.sql.SQLException;

import framework.jdbc.DBMng;

public class UserPwdDAO {

	public String getLatestUserEncodedPwdById(String id, String encodedPw) {
		DBMng db = null;
		
		try {
			db = new DBMng();
			db.setQuery("select pwd from user_pwd where user_id=? order by seq desc limit 1");
			db.setString(id);
			db.execute();
			
			if (db.next())
				return db.getString("pwd");
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

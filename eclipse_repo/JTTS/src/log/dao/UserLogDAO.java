package log.dao;

import java.sql.SQLException;

import framework.jdbc.DBMng;
import log.vo.UserLogVO;

public class UserLogDAO {

	public boolean insertNewLog(UserLogVO log) {
		DBMng db = null;
		
		try {
			db = new DBMng();
			db.setQuery("insert into user_log values (null, ?, ?, ?, ?, ?)");
			db.setString(log.getUserID());
			db.setString(log.getLogTypeCode());
			db.setString(log.getLogContent());
			db.setInt(log.isPublic()?1:0);
			db.setDate(log.getRegdate());
			db.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			db.close();
		}
		
		return true;
	}
}

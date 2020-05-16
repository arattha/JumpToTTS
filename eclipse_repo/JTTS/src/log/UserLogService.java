package log;

import java.sql.SQLException;

import framework.jdbc.DBMng;
import log.dao.UserLogDAO;

public class UserLogService {

	public boolean insertLog(UserLogDAO dao) {
		DBMng db = null;
		
		try {
			db = new DBMng();
			db.setQuery("insert into user_log values(null,?,?,?,?,?)");
			db.setString(dao.getUserID());
			db.setString(dao.getLogTypeCode());
			db.setString(dao.getLogContent());
			db.setInt(dao.isPublic()?1:0);
			db.setDate(dao.getRegdate());
			db.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
}

package log;

import java.util.Date;

import log.dao.UserLogDAO;
import log.vo.UserLogVO;

public class UserLogService {

	public boolean addNewLog(String userID, String logTypeCode, String logContent, boolean isPublic) {
		UserLogVO log = new UserLogVO(userID, logTypeCode, logContent, isPublic, new Date());
		UserLogDAO dao = new UserLogDAO();
		if (dao.insertNewLog(log))
			return true;
		else
			return false;
	}
}

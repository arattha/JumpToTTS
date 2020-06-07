package auth;

import auth.dao.UserDAO;
import auth.dao.UserPwdDAO;
import auth.vo.UserVO;
import framework.util.ByteUtil;
import framework.util.CryptoHashingUtil;
import log.UserLogService;

public class UserAuthService {

	public boolean joinNewUser(UserVO user, String pw) {
		byte[] encodedPwBytes = CryptoHashingUtil.sha256(pw);
		String encodedPw = ByteUtil.byteArrayToHexString(encodedPwBytes);
		
		UserDAO userDAO = new UserDAO();
		if (!userDAO.insertNewUser(user, encodedPw))
			return false;
		
		user.setAuthCode("GEN_USER");
		
		UserLogService logService = new UserLogService();
		logService.addNewLog(user.getId(), "join", user.getNickname()+"님이 Jump to TTS의 회원이 되었습니다.", true);
		
		return true;
	}
	
	public String login(String id, String pw, String ip) {
		byte[] encodedPwBytes = CryptoHashingUtil.sha256(pw);
		String encodedPwd = ByteUtil.byteArrayToHexString(encodedPwBytes);

		UserDAO userDAO = new UserDAO();
		UserPwdDAO userPwdDAO = new UserPwdDAO();
		UserVO user = userDAO.getUserInfo(id);
		UserLogService logService = new UserLogService();
		
		if (user == null)
			return null;
		
		String dbPwd = userPwdDAO.getLatestUserEncodedPwdById(id, encodedPwd);
		
		if (!encodedPwd.equals(dbPwd)) {
			logService.addNewLog(id, "login-pwd-mismatch", user.getNickname()+"님 "+ip+"에서 로그인에 실패했습니다. - "+pw, false);
			return null;
		}
		
		logService.addNewLog(id, "login-success", user.getNickname()+"님이 로그인하셨습니다.", false);

		return user.getAuthCode();
	}
}

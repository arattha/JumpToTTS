package auth;

import auth.dao.UserDAO;
import auth.vo.UserAuthVO;
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
		
		UserAuthVO auth = new UserAuthVO("GEN_USER", "일반 사용자", 100);
		user.setAuth(auth);
		
		UserLogService logService = new UserLogService();
		logService.addNewLog(user.getId(), "join", user.getNickname()+"님이 Jump to TTS의 회원이 되었습니다.", true);
		
		return true;
	}
}

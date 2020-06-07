package auth.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONAware;
import org.json.simple.JSONObject;

import auth.UserAuthService;
import auth.vo.UserVO;
import framework.servlet.controller.handler.AjaxRequestHandler;

public class JoinAction implements AjaxRequestHandler {

	@Override
	public String getURL() {
		return "/process/auth/join";
	}

	@SuppressWarnings("unchecked")
	@Override
	public JSONAware process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String pwCfm = req.getParameter("pwCfm");
		String name = req.getParameter("name");
		String nickname = req.getParameter("nickname");
		String email = req.getParameter("email");
		
		JSONObject res = new JSONObject();
		if (id == null || id.isEmpty())
			res.put("status", "empty field - id");
		else if (pw == null || pw.isEmpty())
			res.put("status", "empty field - pwd");
		else if (!pw.equals(pwCfm))
			res.put("status", "pwd mismatch");
		else if (name == null || name.isEmpty())
			res.put("status", "empty field - name");
		else if (nickname == null || nickname.isEmpty())
			res.put("status", "empty field - nickname");
		else if (email == null || email.isEmpty())
			res.put("status", "empty field - email");
		else {
			UserVO user = new UserVO(id, name, nickname);
			user.setEmailAddr(email);
			
			UserAuthService service = new UserAuthService();
			if (service.joinNewUser(user, pw))
				res.put("status", "join success");
			else
				res.put("status", "join failed");
		}
		
		return res;
	}

}

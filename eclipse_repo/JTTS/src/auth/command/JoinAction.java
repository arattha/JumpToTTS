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
		String name = req.getParameter("name");
		String nickname = req.getParameter("nickname");
		
		UserVO user = new UserVO(id, name, nickname);
		
		JSONObject res = new JSONObject();
		UserAuthService service = new UserAuthService();
		if (service.joinNewUser(user, pw))
			res.put("result", "join success");
		else
			res.put("result", "join failed");
		
		return res;
	}

}

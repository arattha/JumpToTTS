package auth.command;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONAware;
import org.json.simple.JSONObject;

import auth.UserAuthService;
import framework.servlet.controller.handler.AjaxRequestHandler;

public class LoginAction implements AjaxRequestHandler {

	@Override
	public String getURL() {
		return "/process/auth/login";
	}

	@SuppressWarnings("unchecked")
	@Override
	public JSONAware process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		UserAuthService service = new UserAuthService();
		
		JSONObject res = new JSONObject();
		if (id == null || id.isEmpty())
			res.put("status", "empty field - id");
		else if (pw == null || pw.isEmpty())
			res.put("status", "empty field - pwd");
		else {
			String authCode = service.login(id, pw, req.getRemoteAddr());
			if (authCode != null) {
				res.put("status", "success");
				req.getSession().setAttribute("user-id", id);
				req.getSession().setAttribute("auth", authCode);
				req.getSession().setAttribute("login-date", new Date());
			}
			else
				res.put("status", "login failed");
		}
		
		return res;
	}

}

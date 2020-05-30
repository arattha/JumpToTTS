package auth.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONAware;

import framework.servlet.controller.handler.AjaxRequestHandler;

public class LoginAction implements AjaxRequestHandler {

	@Override
	public String getURL() {
		return "/process/auth/login";
	}

	@Override
	public JSONAware process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		
		return null;
	}

}

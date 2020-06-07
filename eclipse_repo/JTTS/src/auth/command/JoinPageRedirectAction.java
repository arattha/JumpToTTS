package auth.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import framework.servlet.controller.handler.RedirectPageHandler;
import framework.servlet.controller.vo.PageMapperVO;

public class JoinPageRedirectAction implements RedirectPageHandler {
	
	private static final String VIEW_PAGE = "/WEB-INF/view/auth/join.jsp";

	@Override
	public String getURL() {
		return "/page/auth/join";
	}

	@Override
	public PageMapperVO doGet(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return new PageMapperVO(VIEW_PAGE);
	}

	@Override
	public PageMapperVO doPost(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return new PageMapperVO(VIEW_PAGE);
	}

}

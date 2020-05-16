package log.dao;

import java.util.Date;

public class UserLogDAO {

	private String userID;
	private String logTypeCode;
	private String logContent;
	private boolean isPublic;
	private Date regdate;
	
	public UserLogDAO(String userID, String logTypeCode, String logContent, boolean isPublic, Date regdate) {
		super();
		this.userID = userID;
		this.logTypeCode = logTypeCode;
		this.logContent = logContent;
		this.isPublic = isPublic;
		this.regdate = regdate;
	}

	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getLogTypeCode() {
		return logTypeCode;
	}
	public void setLogTypeCode(String logTypeCode) {
		this.logTypeCode = logTypeCode;
	}
	public String getLogContent() {
		return logContent;
	}
	public void setLogContent(String logContent) {
		this.logContent = logContent;
	}
	public boolean isPublic() {
		return isPublic;
	}
	public void setPublic(boolean isPublic) {
		this.isPublic = isPublic;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}

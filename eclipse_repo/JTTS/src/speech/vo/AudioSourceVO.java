package speech.vo;

import java.util.Date;

public class AudioSourceVO {

	private int seq;
	private String text;
	private String statusCode;
	private String userID;
	private String filePath;
	private Date regdate;
	
	public AudioSourceVO(String text, String statusCode, String userID) {
		this.text = text;
		this.statusCode = statusCode;
		this.userID = userID;
		this.filePath = null;
		this.regdate = new Date();
	}

	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}

package auth.vo;

import java.util.Date;

public class UserVO {

	private String id;
	private String name;
	private String nickname;
	private String homeAddr;
	private String emailAddr;
	private String phoneNumber;
	private Date birth;
	private int gender;
	private UserAuthVO auth;
	private boolean isValid;
	private boolean isResign;
	private Date regdate;

	public UserVO(String id, String name, String nickname) {
		super();
		this.id = id;
		this.name = name;
		this.nickname = nickname;
		this.homeAddr = null;
		this.emailAddr = null;
		this.phoneNumber = null;
		this.birth = new Date(0);
		this.gender = 1;
		this.auth = null;
		this.isValid = true;
		this.isResign = false;
		this.regdate = new Date();
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getHomeAddr() {
		return homeAddr;
	}
	public void setHomeAddr(String homeAddr) {
		this.homeAddr = homeAddr;
	}
	public String getEmailAddr() {
		return emailAddr;
	}
	public void setEmailAddr(String emailAddr) {
		this.emailAddr = emailAddr;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public UserAuthVO getAuth() {
		return auth;
	}
	public void setAuth(UserAuthVO auth) {
		this.auth = auth;
	}
	public boolean isValid() {
		return isValid;
	}
	public void setValid(boolean isValid) {
		this.isValid = isValid;
	}
	public boolean isResign() {
		return isResign;
	}
	public void setResign(boolean isResign) {
		this.isResign = isResign;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}
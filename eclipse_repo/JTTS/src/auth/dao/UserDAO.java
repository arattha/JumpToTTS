package auth.dao;

import java.util.Date;

public class UserDAO {

	private String id;
	private String name;
	private String nickname;
	private String homeAddr;
	private String emailAddr;
	private String phoneNumber;
	private Date birth;
	private int gender;
	private UserAuthDAO auth;
	private boolean isValid;
	private boolean is_resign;
	private Date regdate;

	
}
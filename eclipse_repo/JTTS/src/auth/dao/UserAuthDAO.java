package auth.dao;

public class UserAuthDAO {

	private String code;
	private String name;
	private String priority;
	
	public UserAuthDAO(String code, String name, String priority) {
		super();
		this.code = code;
		this.name = name;
		this.priority = priority;
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
}

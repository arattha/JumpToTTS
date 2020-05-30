package auth.vo;

public class UserAuthVO {

	private String code;
	private String name;
	private int priority;
	
	public UserAuthVO(String code, String name, int priority) {
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
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
}

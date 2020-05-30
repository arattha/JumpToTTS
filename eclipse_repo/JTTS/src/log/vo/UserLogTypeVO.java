package log.vo;

public class UserLogTypeVO {

	private String code;
	private String name;
	private int order;
	
	public UserLogTypeVO(String code, String name, int order) {
		super();
		this.code = code;
		this.name = name;
		this.order = order;
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
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
}

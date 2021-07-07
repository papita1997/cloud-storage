package pojo;

public class UserPojo {

	private String userid;
	private String username;
	private String password;
	private String userUUID;
	
	public UserPojo() {
		
	}
	
	public UserPojo(String userid, String username, String password, String userUUID) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.userUUID = userUUID;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserUUID() {
		return userUUID;
	}

	public void setUserUUID(String userUUID) {
		this.userUUID = userUUID;
	}
	
	
}

package suibian;


import java.sql.Date;


public class BeanUser {
	public BeanUser(int id, String user_name, String pwd, String email, String nationality, String lastLoginTime,
			String role) {
		super();
		this.id = id;
		this.user_name = user_name;
		this.pwd = pwd;
		this.email = email;
		this.nationality = nationality;
		this.lastLoginTime = lastLoginTime;
		this.role = role;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(String lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	private int id;
	private String user_name;
	private String pwd;
	private String email;
	private String nationality;
	private String lastLoginTime;
	private String role;
}

	
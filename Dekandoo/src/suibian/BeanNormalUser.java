package suibian;

public class BeanNormalUser {
	private int USER_ID; 	
	private String USER_NAME; 	
	private String USER_PWD; 	
	private String USER_SEX; 
	private String REGISTER_TIME; 	
	private String EMAIL; 	
	private String NATIONALITY; 	
	private String IDENTIFY; 
	
	public BeanNormalUser(int USER_ID, String uSER_NAME, String uSER_PWD, String uSER_SEX, String rEGISTER_TIME,
			String eMAIL, String nATIONALITY, String iDENTIFY) {
		
		this.USER_ID = USER_ID;
		USER_NAME = uSER_NAME;
		USER_PWD = uSER_PWD;
		USER_SEX = uSER_SEX;
		REGISTER_TIME = rEGISTER_TIME;
		EMAIL = eMAIL;
		NATIONALITY = nATIONALITY;
		IDENTIFY = iDENTIFY;
	}
	
	



	public int getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(int uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public String getUSER_PWD() {
		return USER_PWD;
	}
	public void setUSER_PWD(String uSER_PWD) {
		USER_PWD = uSER_PWD;
	}
	public String getUSER_SEX() {
		return USER_SEX;
	}
	public void setUSER_SEX(String uSER_SEX) {
		USER_SEX = uSER_SEX;
	}
	public String getREGISTER_TIME() {
		return REGISTER_TIME;
	}
	public void setREGISTER_TIME(String rEGISTER_TIME) {
		REGISTER_TIME = rEGISTER_TIME;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getNATIONALITY() {
		return NATIONALITY;
	}
	public void setNATIONALITY(String nATIONALITY) {
		NATIONALITY = nATIONALITY;
	}
	public String getIDENTIFY() {
		return IDENTIFY;
	}
	public void setIDENTIFY(String iDENTIFY) {
		IDENTIFY = iDENTIFY;
	}
	
}

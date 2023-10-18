package model;

public class loginBean {
	//멤버 변수
	private String userid;
	private String userpassword;
	private String useremail;
	
	//디비에 저장되어 있는 값으로 가정
	String db_userid = "hong";
	String db_password ="1111";
	String db_email ="1234@naver.com";
	
	//멤버 메소드
	public boolean checkUser() {
		if(db_userid.equals(db_userid) && db_password.equals(userpassword)
				&& db_email.equals(useremail)) {
			return true;
		}
		else {
			return false;
		}
	}
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
}

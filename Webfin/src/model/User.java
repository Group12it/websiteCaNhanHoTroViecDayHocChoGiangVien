package model;

public class User {

	 public User() {
	    }
	private long userID;
    private String userEmail;
    private String userPass;
    private String  userRole;
    private String userHoTen;
    private String userNgaySinh;
    private String userGioiTinh;
    private String userSDT;
    
	public long getUserID() {
		return userID;
	}
	public void setUserID(long userID) {
		this.userID = userID;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	public String getUserHoTen() {
		return userHoTen;
	}
	public void setUserHoTen(String userHoTen) {
		this.userHoTen = userHoTen;
	}
	public String getUserNgaySinh() {
		return userNgaySinh;
	}
	public void setUserNgaySinh(String userNgaySinh) {
		this.userNgaySinh = userNgaySinh;
	}
	public String getUserGioiTinh() {
		return userGioiTinh;
	}
	public void setUserGioiTinh(String userGioiTinh) {
		this.userGioiTinh = userGioiTinh;
	}
	public String getUserSDT() {
		return userSDT;
	}
	public void setUserSDT(String userSDT) {
		this.userSDT = userSDT;
	}
    
}

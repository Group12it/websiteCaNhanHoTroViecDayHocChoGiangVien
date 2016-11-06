/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class Users {

	private long userID;
    private String userEmail;
    private String userPass;
    private String  userRole;
    private String userHoTen;
    private String userNgaySinh;
    private String userGioiTinh;
    private String userSDT;
    private String userHinhAnh;
    
    public Users() {
	    }
	 
	 public Users(long userID, String userPass) {
			this.userID = userID;
			this.userPass = userPass;
	    }
	 
	 
	 public Users(long userID, String userHoTen,String userNgaySinh,  String userGioiTinh, String userSDT) {
		 	this.userID = userID;
			this.userHoTen = userHoTen;
			this.userNgaySinh=userNgaySinh;
			this.userGioiTinh = userGioiTinh;
			this.userSDT = userSDT;
			
	    }

	public Users(long userID, String userEmail, String userPass, String userRole, String userHoTen, String userNgaySinh,
			String userGioiTinh, String userSDT, String userHinhAnh) {
		super();
		this.userID = userID;
		this.userEmail = userEmail;
		this.userPass = userPass;
		this.userRole = userRole;
		this.userHoTen = userHoTen;
		this.userNgaySinh = userNgaySinh;
		this.userGioiTinh = userGioiTinh;
		this.userSDT = userSDT;
		this.userHinhAnh = userHinhAnh;
	}

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

	public String getUserHinhAnh() {
		return userHinhAnh;
	}

	public void setUserHinhAnh(String userHinhAnh) {
		this.userHinhAnh = userHinhAnh;
	}
	
	
	
	 

}

package model;

public class HocVienDangKyKH {
	private long UserID;
	private String Email;
	private String HoTen;
	private String NgaySinh;
	private String SDT;
	private long MaKH;
	private String TenKH;
	
	public HocVienDangKyKH() {
		
	}
	public HocVienDangKyKH(long userID, String email, String hoTen, String ngaySinh, String sDT, long maKH,
			String tenKH) {
		super();
		UserID = userID;
		Email = email;
		HoTen = hoTen;
		NgaySinh = ngaySinh;
		SDT = sDT;
		MaKH = maKH;
		TenKH = tenKH;
	}
	public long getUserID() {
		return UserID;
	}
	public void setUserID(long userID) {
		UserID = userID;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	public long getMaKH() {
		return MaKH;
	}
	public void setMaKH(long maKH) {
		MaKH = maKH;
	}
	public String getTenKH() {
		return TenKH;
	}
	public void setTenKH(String tenKH) {
		TenKH = tenKH;
	}
}

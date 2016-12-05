package model;

public class Diems {

	private long MaDeThi;
	private long UserID;
	private long Diem;
	private String NhanXet;
	public Diems() {
		super();
	}
	public long getMaDeThi() {
		return MaDeThi;
	}
	public void setMaDeThi(long maDeThi) {
		MaDeThi = maDeThi;
	}
	public long getUserID() {
		return UserID;
	}
	public void setUserID(long userID) {
		UserID = userID;
	}
	public long getDiem() {
		return Diem;
	}
	public void setDiem(long diem) {
		Diem = diem;
	}
	public String getNhanXet() {
		return NhanXet;
	}
	public void setNhanXet(String nhanXet) {
		NhanXet = nhanXet;
	}
}

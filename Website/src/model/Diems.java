package model;

public class Diems {

	private long MaDeThi;
	private long UserID;
	private float Diem;
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
	public float getDiem() {
		return Diem;
	}
	public void setDiem(float diem) {
		Diem = diem;
	}
	public String getNhanXet() {
		return NhanXet;
	}
	public void setNhanXet(String nhanXet) {
		NhanXet = nhanXet;
	}
}

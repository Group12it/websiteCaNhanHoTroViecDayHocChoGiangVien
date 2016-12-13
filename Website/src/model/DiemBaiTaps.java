package model;

public class DiemBaiTaps {
	private long MaBaitap;
	private long UserID;
	private float Diem;
	private String NhanXet;
	
	public DiemBaiTaps() {
		super();
	}
	public long getMaBaitap() {
		return MaBaitap;
	}
	public void setMaBaitap(long maBaitap) {
		MaBaitap = maBaitap;
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

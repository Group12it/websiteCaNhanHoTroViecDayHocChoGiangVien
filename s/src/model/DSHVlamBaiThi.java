package model;

public class DSHVlamBaiThi {

	private long UserID;
	private String Email;
	private String HoTen;
	private long DeThiID;
	private long MaKH;
	private String ChuoiDapAn;
	private long DapAnID;
	private float Diem;
	public DSHVlamBaiThi() {
		super();
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
	public long getDeThiID() {
		return DeThiID;
	}
	public void setDeThiID(long deThiID) {
		DeThiID = deThiID;
	}
	public long getMaKH() {
		return MaKH;
	}
	public void setMaKH(long maKH) {
		MaKH = maKH;
	}
	public String getChuoiDapAn() {
		return ChuoiDapAn;
	}
	public void setChuoiDapAn(String chuoiDapAn) {
		ChuoiDapAn = chuoiDapAn;
	}
	public long getDapAnID() {
		return DapAnID;
	}
	public void setDapAnID(long dapAnID) {
		DapAnID = dapAnID;
	}
	public float getDiem() {
		return Diem;
	}
	public void setDiem(float diem) {
		Diem = diem;
	}
}

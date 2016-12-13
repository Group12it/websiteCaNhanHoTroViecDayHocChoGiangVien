package model;

public class DangKyKhoaHoc {
	private long UserId;
	private long MaKH;
	private String chophep;
	
	public DangKyKhoaHoc() {
		super();
	}
	public long getUserId() {
		return UserId;
	}
	public void setUserId(long userId) {
		UserId = userId;
	}
	public long getMaKH() {
		return MaKH;
	}
	public void setMaKH(long maKH) {
		MaKH = maKH;
	}
	public String getChophep() {
		return chophep;
	}
	public void setChophep(String chophep) {
		this.chophep = chophep;
	}
	
	

}

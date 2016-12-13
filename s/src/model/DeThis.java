package model;

public class DeThis {
	private long MaDeThi;
	private String TenDeThi;
	private long MaKH;
	private String File;
	public DeThis(long maDeThi, String tenDeThi, long maKH, String file) {
		super();
		MaDeThi = maDeThi;
		TenDeThi = tenDeThi;
		MaKH = maKH;
		File = file;
	}
	public DeThis() {
		super();
	}
	public long getMaDeThi() {
		return MaDeThi;
	}
	public void setMaDeThi(long maDeThi) {
		MaDeThi = maDeThi;
	}
	public String getTenDeThi() {
		return TenDeThi;
	}
	public void setTenDeThi(String tenDeThi) {
		TenDeThi = tenDeThi;
	}
	public long getMaKH() {
		return MaKH;
	}
	public void setMaKH(long maKH) {
		MaKH = maKH;
	}
	public String getFile() {
		return File;
	}
	public void setFile(String file) {
		File = file;
	}
	
	
}

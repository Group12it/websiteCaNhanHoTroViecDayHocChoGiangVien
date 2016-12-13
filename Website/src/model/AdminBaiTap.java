package model;

public class AdminBaiTap {
	private long IDBaiTap;
	private String TenBaiTap;
	private String NoiDungBaiTap;
	private String HanNop;
	private String GioNop;
	private long MaChiTietKH;

	
	public AdminBaiTap() {
		super();
	}
	public AdminBaiTap(long iDBaiTap, String tenBaiTap, String noiDungBaiTap, String hanNop, String gioNop,
			long maChiTietKH) {
		super();
		IDBaiTap = iDBaiTap;
		TenBaiTap = tenBaiTap;
		NoiDungBaiTap = noiDungBaiTap;
		HanNop = hanNop;
		GioNop = gioNop;
		MaChiTietKH = maChiTietKH;
		
	}

	public long getIDBaiTap() {
		return IDBaiTap;
	}
	public void setIDBaiTap(long iDBaiTap) {
		IDBaiTap = iDBaiTap;
	}
	public String getTenBaiTap() {
		return TenBaiTap;
	}
	public void setTenBaiTap(String tenBaiTap) {
		TenBaiTap = tenBaiTap;
	}
	public String getNoiDungBaiTap() {
		return NoiDungBaiTap;
	}
	public void setNoiDungBaiTap(String noiDungBaiTap) {
		NoiDungBaiTap = noiDungBaiTap;
	}
	public String getHanNop() {
		return HanNop;
	}
	public void setHanNop(String hanNop) {
		HanNop = hanNop;
	}
	public String getGioNop() {
		return GioNop;
	}
	public void setGioNop(String gioNop) {
		GioNop = gioNop;
	}
	public long getMaChiTietKH() {
		return MaChiTietKH;
	}
	public void setMaChiTietKH(long maChiTietKH) {
		MaChiTietKH = maChiTietKH;
	}




	
}

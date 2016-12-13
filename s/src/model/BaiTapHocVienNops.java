package model;

public class BaiTapHocVienNops {
	private long BaiTapID; 
	private long UserID;
	private String TenBT;
	private String GhiChu;
	private long MaCTKH;
	private String FileBaiTap;
	private String ThoiGian;
	
	
	public BaiTapHocVienNops() {
		super();
	}


	public String getThoiGian() {
		return ThoiGian;
	}


	public void setThoiGian(String thoiGian) {
		ThoiGian = thoiGian;
	}


	public long getBaiTapID() {
		return BaiTapID;
	}


	public void setBaiTapID(long baiTapID) {
		BaiTapID = baiTapID;
	}


	public long getUserID() {
		return UserID;
	}


	public void setUserID(long userID) {
		UserID = userID;
	}


	public String getTenBT() {
		return TenBT;
	}


	public void setTenBT(String tenBT) {
		TenBT = tenBT;
	}


	public String getGhiChu() {
		return GhiChu;
	}


	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}


	public long getMaCTKH() {
		return MaCTKH;
	}


	public void setMaCTKH(long maCTKH) {
		MaCTKH = maCTKH;
	}


	public String getFileBaiTap() {
		return FileBaiTap;
	}


	public void setFileBaiTap(String fileBaiTap) {
		FileBaiTap = fileBaiTap;
	}


	public BaiTapHocVienNops(long baiTapID, long userID, String tenBT, String ghiChu, long maCTKH, String fileBaiTap) {
		super();
		BaiTapID = baiTapID;
		UserID = userID;
		TenBT = tenBT;
		GhiChu = ghiChu;
		MaCTKH = maCTKH;
		FileBaiTap = fileBaiTap;
	}
	
}

package model;

public class ThiTracNghiems {
	private long DapAnID;
	private String ChuoiDapAn;
	private long UserID;
	private long DeThiID;

	public ThiTracNghiems() {
		super();
	}

	public ThiTracNghiems(long dapAnID, String chuoiDapAn, long userID, long deThiID) {
		super();
		DapAnID = dapAnID;
		ChuoiDapAn = chuoiDapAn;
		UserID = userID;
		DeThiID = deThiID;
	}

	public long getDapAnID() {
		return DapAnID;
	}

	public void setDapAnID(long dapAnID) {
		DapAnID = dapAnID;
	}

	public String getChuoiDapAn() {
		return ChuoiDapAn;
	}

	public void setChuoiDapAn(String choiDapAn) {
		ChuoiDapAn = choiDapAn;
	}

	public long getUserID() {
		return UserID;
	}

	public void setUserID(long userID) {
		UserID = userID;
	}

	public long getDeThiID() {
		return DeThiID;
	}

	public void setDeThiID(long deThiID) {
		DeThiID = deThiID;
	}

}

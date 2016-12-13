package model;

public class DapAnHocViens {
private long DapAnID;
private String ChuoiDapAn;
private long UserID;
private long DeThiID;
public DapAnHocViens() {
	super();
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
public void setChuoiDapAn(String chuoiDapAn) {
	ChuoiDapAn = chuoiDapAn;
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
public DapAnHocViens(long dapAnID, String chuoiDapAn, long userID, long deThiID) {
	super();
	DapAnID = dapAnID;
	ChuoiDapAn = chuoiDapAn;
	UserID = userID;
	DeThiID = deThiID;
}

}

package model;

public class DiemThiTracNghiem {
private long MaKH;
private long UserID;
private float DiemSo;
private String XepLoai;
public DiemThiTracNghiem(long maKH, long userID, float diemSo, String xepLoai) {
	super();
	MaKH = maKH;
	UserID = userID;
	DiemSo = diemSo;
	XepLoai = xepLoai;
}


public DiemThiTracNghiem() {
	super();
}


public long getMaKH() {
	return MaKH;
}
public void setMaKH(long maKH) {
	MaKH = maKH;
}
public long getUserID() {
	return UserID;
}
public void setUserID(long userID) {
	UserID = userID;
}
public float getDiemSo() {
	return DiemSo;
}
public void setDiemSo(float diemSo) {
	DiemSo = diemSo;
}
public String getXepLoai() {
	return XepLoai;
}
public void setXepLoai(String xepLoai) {
	XepLoai = xepLoai;
}
}

package model;

public class ThongBaos {
private long MaThongBao;
private long MaKH;
private String TenThongBao;
private String NoiDungThongBao;
private String ThoiGian;
public ThongBaos() {
	super();
}
public long getMaThongBao() {
	return MaThongBao;
}
public void setMaThongBao(long maThongBao) {
	MaThongBao = maThongBao;
}
public long getMaKH() {
	return MaKH;
}
public void setMaKH(long maKH) {
	MaKH = maKH;
}
public String getTenThongBao() {
	return TenThongBao;
}
public void setTenThongBao(String tenThongBao) {
	TenThongBao = tenThongBao;
}
public String getNoiDungThongBao() {
	return NoiDungThongBao;
}
public void setNoiDungThongBao(String noiDungThongBao) {
	NoiDungThongBao = noiDungThongBao;
}
public String getThoiGian() {
	return ThoiGian;
}
public void setThoiGian(String thoiGian) {
	ThoiGian = thoiGian;
}

}

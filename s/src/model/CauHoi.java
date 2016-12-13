package model;

public class CauHoi {
	private long MaKH;
	private long MaCau;
	private String NoiDung;
	private String DanA;
	private String DanB;
	private String DanC;
	private String DanD;
	private String DanDung;
	public CauHoi(long maKH, long maCau, String noiDung, String danA, String danB, String danC, String danD,
			String danDung) {
		super();
		MaKH = maKH;
		MaCau = maCau;
		NoiDung = noiDung;
		DanA = danA;
		DanB = danB;
		DanC = danC;
		DanD = danD;
		DanDung = danDung;
	}
	public CauHoi() {
		super();
	}
	public long getMaKH() {
		return MaKH;
	}
	public void setMaKH(long maKH) {
		MaKH = maKH;
	}
	public long getMaCau() {
		return MaCau;
	}
	public void setMaCau(long maCau) {
		MaCau = maCau;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
	public String getDanA() {
		return DanA;
	}
	public void setDanA(String danA) {
		DanA = danA;
	}
	public String getDanB() {
		return DanB;
	}
	public void setDanB(String danB) {
		DanB = danB;
	}
	public String getDanC() {
		return DanC;
	}
	public void setDanC(String danC) {
		DanC = danC;
	}
	public String getDanD() {
		return DanD;
	}
	public void setDanD(String danD) {
		DanD = danD;
	}
	public String getDanDung() {
		return DanDung;
	}
	public void setDanDung(String danDung) {
		DanDung = danDung;
	}
	
	
	
}

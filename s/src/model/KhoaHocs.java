package model;

public class KhoaHocs {
 
	
	private long adMaKH;
	private String adTenKH;
	private String adNgayKhaiGiang;
	private String adHocPhi;
	private String 	adKhaiQuat;
	private String adNoiDung;
	private String adShowtester;
	
	
	public KhoaHocs() {
		super();
	}

	public KhoaHocs(long adMaKH, String adTenKH, String adNgayKhaiGiang, String adHocPhi, String adKhaiQuat,
			String adNoiDung, String adShowtester) {
		super();
		this.adMaKH = adMaKH;
		this.adTenKH = adTenKH;
		this.adNgayKhaiGiang = adNgayKhaiGiang;
		this.adHocPhi = adHocPhi;
		this.adKhaiQuat = adKhaiQuat;
		this.adNoiDung = adNoiDung;
		this.adShowtester = adShowtester;
	}

	public long getAdMaKH() {
		return adMaKH;
	}

	public void setAdMaKH(long adMaKH) {
		this.adMaKH = adMaKH;
	}

	public String getAdTenKH() {
		return adTenKH;
	}

	public void setAdTenKH(String adTenKH) {
		this.adTenKH = adTenKH;
	}

	public String getAdNgayKhaiGiang() {
		return adNgayKhaiGiang;
	}

	public void setAdNgayKhaiGiang(String adNgayKhaiGiang) {
		this.adNgayKhaiGiang = adNgayKhaiGiang;
	}

	public String getAdHocPhi() {
		return adHocPhi;
	}

	public void setAdHocPhi(String adHocPhi) {
		this.adHocPhi = adHocPhi;
	}

	public String getAdKhaiQuat() {
		return adKhaiQuat;
	}

	public void setAdKhaiQuat(String adKhaiQuat) {
		this.adKhaiQuat = adKhaiQuat;
	}

	public String getAdNoiDung() {
		return adNoiDung;
	}

	public void setAdNoiDung(String adNoiDung) {
		this.adNoiDung = adNoiDung;
	}

	public String getAdShowtester() {
		return adShowtester;
	}

	public void setAdShowtester(String adShowtester) {
		this.adShowtester = adShowtester;
	}

	
}

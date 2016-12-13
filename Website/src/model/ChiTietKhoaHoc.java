package model;

public class ChiTietKhoaHoc {

	private long chitietKhoaHocID;
	private String tenBaiHoc;
	private String NoiDung;
	private String pathBaiGiang;
	private String 	pathEbook;
	private String pathVideo;
	private String pathBaiTap;
	private long makh;

	public ChiTietKhoaHoc(long chitietKhoaHocID, String tenBaiHoc, String noiDung, String pathBaiGiang,
			String pathEbook, String pathVideo, String pathBaiTap, long makh) {
		super();
		this.chitietKhoaHocID = chitietKhoaHocID;
		this.tenBaiHoc = tenBaiHoc;
		NoiDung = noiDung;
		this.pathBaiGiang = pathBaiGiang;
		this.pathEbook = pathEbook;
		this.pathVideo = pathVideo;
		this.pathBaiTap = pathBaiTap;
		this.makh = makh;
	}
	public String getPathVideo() {
		return pathVideo;
	}
	public void setPathVideo(String pathVideo) {
		this.pathVideo = pathVideo;
	}
	public ChiTietKhoaHoc() {
		super();
	}
	public long getChitietKhoaHocID() {
		return chitietKhoaHocID;
	}
	public void setChitietKhoaHocID(long chitietKhoaHocID) {
		this.chitietKhoaHocID = chitietKhoaHocID;
	}
	public String getTenBaiHoc() {
		return tenBaiHoc;
	}
	public void setTenBaiHoc(String tenBaiHoc) {
		this.tenBaiHoc = tenBaiHoc;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
	public String getPathBaiGiang() {
		return pathBaiGiang;
	}
	public void setPathBaiGiang(String pathBaiGiang) {
		this.pathBaiGiang = pathBaiGiang;
	}
	public String getPathEbook() {
		return pathEbook;
	}
	public void setPathEbook(String pathEbook) {
		this.pathEbook = pathEbook;
	}
	public String getPathBaiTap() {
		return pathBaiTap;
	}
	public void setPathBaiTap(String pathBaiTap) {
		this.pathBaiTap = pathBaiTap;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	
}

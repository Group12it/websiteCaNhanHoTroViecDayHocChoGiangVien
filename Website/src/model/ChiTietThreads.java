package model;

public class ChiTietThreads {
	private long threadID;
	private long mathread;
	private String userID;
	private String thoigian;
	private String binhluan;
	public ChiTietThreads(long threadID, long mathread, String userID, String thoigian, String binhluan) {
		super();
		this.threadID = threadID;
		this.mathread = mathread;
		this.userID = userID;
		this.thoigian = thoigian;
		this.binhluan = binhluan;
	}


	public ChiTietThreads() {
		super();
	}


	public long getThreadID() {
		return threadID;
	}


	public void setThreadID(long threadID) {
		this.threadID = threadID;
	}


	public long getMathread() {
		return mathread;
	}


	public void setMathread(long mathread) {
		this.mathread = mathread;
	}


	public String getUserID() {
		return userID;
	}


	public void setUserID(String userID) {
		this.userID = userID;
	}


	public String getThoigian() {
		return thoigian;
	}


	public void setThoigian(String thoigian) {
		this.thoigian = thoigian;
	}


	public String getBinhluan() {
		return binhluan;
	}


	public void setBinhluan(String binhluan) {
		this.binhluan = binhluan;
	}


	
	
}

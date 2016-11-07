package model;

public class Threads {
	private long threadID;
	private String tenThread;
	private String ngayThread;
	public Threads() {
	}
	public Threads(long threadID, String tenThread, String ngayThread) {
		super();
		this.threadID = threadID;
		this.tenThread = tenThread;
		this.ngayThread = ngayThread;
	}
	public long getThreadID() {
		return threadID;
	}
	public void setThreadID(long threadID) {
		this.threadID = threadID;
	}
	public String getTenThread() {
		return tenThread;
	}
	public void setTenThread(String tenThread) {
		this.tenThread = tenThread;
	}
	public String getNgayThread() {
		return ngayThread;
	}
	public void setNgayThread(String ngayThread) {
		this.ngayThread = ngayThread;
	}
	
}

package model;

public class Threadadmin {
	  	private long threadID;
	    private String tenThread;
	    private String ngaytaothread;
	    public Threadadmin(){}
	
		public Threadadmin(long threadID, String tenThread, String ngaytaothread) {
			super();
			this.threadID = threadID;
			this.tenThread = tenThread;
			this.ngaytaothread = ngaytaothread;
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

		public String getNgaytaothread() {
			return ngaytaothread;
		}

		public void setNgaytaothread(String ngaytaothread) {
			this.ngaytaothread = ngaytaothread;
		}

	

	
	    
}

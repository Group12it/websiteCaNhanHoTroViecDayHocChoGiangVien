package model;

import java.util.Date;

public class Threadadmin {
	  	private long threadID;
	    private String tenThread;
	    private Date ngaytaothread;
	    public Threadadmin(){}
	
		public Threadadmin(long threadID, String tenThread, Date ngaytaothread) {
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

		public Date getNgaytaothread() {
			return ngaytaothread;
		}

		public void setNgaytaothread(Date ngaytaothread) {
			this.ngaytaothread = ngaytaothread;
		}

	
	    
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.ChiTietThreads;

public class ChiTietThreadsDAO {
		Connection connection=DBConnect.getConnection();
	public ArrayList<ChiTietThreads> getChiTietThreadsListByID(String MaThread) throws SQLException{
			 
			 String sql="Select * from chitietthread where MaThread='"+MaThread+"'";
			 PreparedStatement ps=connection.prepareCall(sql);
			 ResultSet rs=ps.executeQuery();
			 ArrayList<ChiTietThreads> list  =new ArrayList<>();
			 while(rs.next()){
				 ChiTietThreads chitietthread=new ChiTietThreads();
				 chitietthread.setThreadID(rs.getLong("ThreadCTID"));
				chitietthread.setMathread(rs.getLong("MaThread"));
				chitietthread.setUserID(rs.getString("UserID"));
				chitietthread.setThoigian(rs.getString("ThoiGian"));
				chitietthread.setBinhluan(rs.getString("BinhLuan"));
				list.add(chitietthread);
			 }
			 return list;
		 }
		
		
		
		
		public ArrayList<ChiTietThreads> getChiTietThreadsList() throws SQLException{
		 
		 String sql="Select * from chitietthread";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<ChiTietThreads> list  =new ArrayList<>();
		 while(rs.next()){
			 ChiTietThreads chitietthread=new ChiTietThreads();
			 chitietthread.setThreadID(rs.getLong("ThreadCTID"));
			 chitietthread.setThreadID(rs.getLong("ThreadCTID"));
				chitietthread.setMathread(rs.getLong("MaThread"));
				chitietthread.setUserID(rs.getString("UserID"));
				chitietthread.setThoigian(rs.getString("ThoiGian"));
				chitietthread.setBinhluan(rs.getString("BinhLuan"));
			list.add(chitietthread);
		 }
		 return list;
	 }
	
	
	//thêm thread
	public boolean insertchitietthread(ChiTietThreads u) {
		
		String sql = "INSERT INTO chitietthread VALUES(?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			
			ps.setLong(1,u.getThreadID());
			ps.setLong(2, u.getMathread());
			ps.setNString(3, u.getUserID());
			ps.setNString(4, u.getThoigian());
			ps.setNString(5, u.getBinhluan());
			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(ChiTietThreadsDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	
}

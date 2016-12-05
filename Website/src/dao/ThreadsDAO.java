package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.Threads;

public class ThreadsDAO {
	Connection connection = DBConnect.getConnection();
	
	public ArrayList<Threads> getThreadsListByID(String mathread) throws SQLException{
		 
		 String sql="Select * from thread where Mathread='"+mathread+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<Threads> list  =new ArrayList<>();
		 while(rs.next()){
			 Threads thread=new Threads();
			 thread.setThreadID(rs.getLong("MaThread"));
			 thread.setTenThread(rs.getString("TenThread"));
			 thread.setNgayThread(rs.getString("NgayTao"));
			
			 list.add(thread);
		 }
		 return list;
	 }
	
	public ArrayList<Threads> getThreadsList() throws SQLException{
		 
		 String sql="Select * from thread";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<Threads> list  =new ArrayList<>();
		 while(rs.next()){
			 Threads thread=new Threads();
			 thread.setThreadID(rs.getLong("MaThread"));
			 thread.setTenThread(rs.getString("TenThread"));
			 thread.setNgayThread(rs.getString("NgayTao"));
			
			 list.add(thread);
		 }
		 return list;
	 }
	
	
	//add thread
	public boolean insertUser(Threads u) {
		
		String sql = "INSERT INTO thread VALUES(?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			
			ps.setLong(1,u.getThreadID());
			ps.setNString(2, u.getTenThread());
			ps.setNString(3, u.getNgayThread());
		
			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(ThreadsDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	//update thread
	 public boolean updateThread(Threads threads)
	 {
		 String sql="update thread set TenThread=?, NgayTao=? where MaThread=?";
		 try {
			PreparedStatement ps=connection.prepareCall(sql);
			ps.setNString(1, threads.getTenThread());
			ps.setNString(2, threads.getNgayThread());
			ps.setLong(3, threads.getThreadID());
			
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (SQLException e) {
			Logger.getLogger(ThreadsDAO.class.getName()).log(Level.SEVERE, null, e);
		}
		 
		 return false;
	 }
    //delete thread
	 public boolean DeleteThread(long MaThread)
	 {
		 String sql="delete from thread where MaThread=?";
		 try {
			PreparedStatement ps=connection.prepareCall(sql);
			
			ps.setLong(1, MaThread);
			ps.executeUpdate();
			return true;
		 } catch (SQLException e) {
			
			e.printStackTrace();
		}
		 
		 return false;
	 }
	
}

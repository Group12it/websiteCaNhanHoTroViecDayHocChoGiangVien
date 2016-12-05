package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.Diems;

public class DiemsDAO {
	
	Connection connection =DBConnect.getConnection();
	
	public ArrayList<Diems> getDeThiByMaDeThi(String MaDe) throws SQLException{
		 String sql="Select * from diem where MaDeThi='"+MaDe+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<Diems> list  =new ArrayList<>();
		 while(rs.next()){
			 Diems  diems=new Diems();
			 diems.setMaDeThi(rs.getLong("MaDeThi"));
			 diems.setUserID(rs.getLong("UserID"));
			 diems.setDiem(rs.getLong("Diem"));
			 diems.setNhanXet(rs.getString("NhanXet"));
			 list.add(diems);
		 }
		 return list;
	}
	
	
	
	public boolean InsertDiem(Diems  diems) {
		
		String sql = "insert into  diem values (?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setLong(1, diems.getMaDeThi());
			ps.setLong(2,diems.getUserID());
			ps.setFloat(3, diems.getDiem());
			ps.setNString(4, diems.getNhanXet());

			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(DiemsDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
}

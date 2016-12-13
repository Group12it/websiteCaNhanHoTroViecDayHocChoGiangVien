package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.DiemBaiTaps;
import model.Diems;

public class DiemBaiTapDAO {
Connection connection =DBConnect.getConnection();
	
	public ArrayList<DiemBaiTaps> getDeThiByMaBT(String MaDe) throws SQLException{
		 String sql="Select * from diembaitap where MaBT='"+MaDe+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<DiemBaiTaps> list  =new ArrayList<>();
		 while(rs.next()){
			 DiemBaiTaps  diems=new  DiemBaiTaps();
			 diems.setMaBaitap(rs.getLong("MaBT"));
			 diems.setUserID(rs.getLong("UserID"));
			 diems.setDiem(rs.getLong("DiemSo"));
			 diems.setNhanXet(rs.getString("NhanXet"));
			 list.add(diems);
		 }
		 return list;
	}
	
	
	
	public boolean InsertDiembt(DiemBaiTaps  diems) {
		
		String sql = "insert into  diembaitap values (?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setLong(1, diems.getMaBaitap());
			ps.setLong(2,diems.getUserID());
			ps.setFloat(3, diems.getDiem());
			ps.setNString(4, diems.getNhanXet());

			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(DiemBaiTapDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.KhaoSatKhoaHocs;

public class KhaoSatKhoaHocDAO {
	Connection connection =DBConnect.getConnection();
		
	public boolean checktrangthaiKhaosat(String userid,String Makh) {
		
		String sql = "SELECT * FROM khaosatkhoahoc  where UserID = '" + userid + "' and MaKH='"+Makh+"'";
		PreparedStatement ps;
		try {
			ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				connection.close();
				return true;
			}
		} catch (SQLException ex) {
			Logger.getLogger(BaiTapHocVienNopDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	
	public ArrayList<KhaoSatKhoaHocs> getKhaoSatByID(String MaDe) throws SQLException{
		 String sql="Select * from khaosatkhoahoc where MaKH='"+MaDe+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<KhaoSatKhoaHocs> list  =new ArrayList<>();
		 while(rs.next()){
			 KhaoSatKhoaHocs khaosat=new KhaoSatKhoaHocs();
		
			 khaosat.setMaKH(rs.getLong("MaKH"));
			 khaosat.setUserID(rs.getLong("UserID"));
			 khaosat.setKQ(rs.getFloat("KQ"));
			 khaosat.setNhanXet(rs.getString("NhanXet"));
			
			 list.add(khaosat);
		 }
		 return list;
	}
	
	
	
	public boolean InsertKhaoSat(KhaoSatKhoaHocs ks) {
		
		String sql = "insert into  khaosatkhoahoc values (?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setLong(1, ks.getMaKH());
			ps.setLong(2,ks.getUserID());
			ps.setFloat(3,ks.getKQ());
			ps.setNString(4,ks.getNhanXet());

			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(KhaoSatKhoaHocDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
}

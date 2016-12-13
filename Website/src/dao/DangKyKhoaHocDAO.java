package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.*;

public class DangKyKhoaHocDAO {
	Connection connection;
	public DangKyKhoaHocDAO()
	{
		connection = DBConnect.getConnection();
	}
	
	
	public boolean checkEmaildangkykh(long userid,String makh,String chophep) {
		
		String sql = "SELECT * FROM dangkykhoahoc  where UserID = '" + userid + "' and MaKH='"+makh+"' and chophep='"+chophep+"'";
		PreparedStatement ps;
		try {
			ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				connection.close();
				return true;
			}
		} catch (SQLException ex) {
			Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	
	
	public ArrayList<DangKyKhoaHoc> getDangkyKhoaHocListByID(String userid) throws SQLException{
		 String sql="Select * from dangkykhoahoc where UserID='"+userid+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<DangKyKhoaHoc> list  =new ArrayList<>();
		 while(rs.next()){
			DangKyKhoaHoc khoahoc=new DangKyKhoaHoc();
			 khoahoc.setUserId(rs.getLong("UserID"));
			 khoahoc.setMaKH(rs.getLong("MaKH"));
			 khoahoc.setChophep(rs.getString("chophep"));
			
			 list.add(khoahoc);
		 }
		 return list;
	}
	
	
public boolean checkhvdangkykh(long userid,String makh,String chophep ) {
		
		String sql = "SELECT * FROM dangkykhoahoc  where UserID = '" + userid + "' and MaKH='"+makh+"' and chophep='"+chophep+"'";
		PreparedStatement ps;
		try {
			ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				connection.close();
				return true;
			}
		} catch (SQLException ex) {
			Logger.getLogger(DangKyKhoaHocDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	
	public boolean InsertThemVao(DangKyKhoaHoc dkkh) throws SQLException {
		try {
			
			String sql = "insert into  dangkykhoahoc values (?,?,?)";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setLong(1, dkkh.getUserId());
			ps.setLong(2, dkkh.getMaKH());
			ps.setString(3,dkkh.getChophep());
			
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean updateThemVao(DangKyKhoaHoc dkkh) throws SQLException {
		try {
			
			String sql = "update dangkykhoahoc set chophep='1' where UserID=? and MaKH=?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setLong(1, dkkh.getUserId());
			ps.setLong(2, dkkh.getMaKH());
			
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean deleteDangKy(DangKyKhoaHoc dkkh) throws SQLException {
		try {
			
			String sql = "delete from dangkykhoahoc where UserID=? and MaKH=?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setLong(1, dkkh.getUserId());
			ps.setLong(2, dkkh.getMaKH());
			
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
}

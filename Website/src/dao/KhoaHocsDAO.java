package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.KhoaHocs;

public class KhoaHocsDAO {

Connection connection = DBConnect.getConnection();
	

public ArrayList<KhoaHocs> getKhoaHocListByID(String makh) throws SQLException{
	 String sql="Select * from khoahoc where MaKH='"+makh+"'";
	 PreparedStatement ps=connection.prepareCall(sql);
	 ResultSet rs=ps.executeQuery();
	 ArrayList<KhoaHocs> list  =new ArrayList<>();
	 while(rs.next()){
		 KhoaHocs khoahoc=new KhoaHocs();
		 khoahoc.setAdMaKH(rs.getLong("MaKH"));
		 khoahoc.setAdTenKH(rs.getString("TenKH"));
		 khoahoc.setAdNgayKhaiGiang(rs.getString("NgayKhaiGiang"));
		 khoahoc.setAdHocPhi(rs.getString("HocPhi"));
		 khoahoc.setAdKhaiQuat(rs.getString("KhaiQuat"));
		 khoahoc.setAdNoiDung(rs.getString("NoiDung"));
		khoahoc.setAdShowtester(rs.getString("ShowTester"));
		
		 list.add(khoahoc);
	 }
	 return list;
}



public ArrayList<KhoaHocs> getKhoaHocList() throws SQLException{
		 String sql="Select * from khoahoc";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<KhoaHocs> list  =new ArrayList<>();
		 while(rs.next()){
			 KhoaHocs khoahoc=new KhoaHocs();
			 khoahoc.setAdMaKH(rs.getLong("MaKH"));
			 khoahoc.setAdTenKH(rs.getString("TenKH"));
			 khoahoc.setAdNgayKhaiGiang(rs.getString("NgayKhaiGiang"));
			 khoahoc.setAdHocPhi(rs.getString("HocPhi"));
			 khoahoc.setAdKhaiQuat(rs.getString("KhaiQuat"));
			 khoahoc.setAdNoiDung(rs.getString("NoiDung"));
			khoahoc.setAdShowtester(rs.getString("ShowTester"));
			
			 list.add(khoahoc);
		 }
		 return list;
	 }
	
	
	//thêm Khoá học
	public boolean insertkhoahoc(KhoaHocs kh) {
		
		String sql = "INSERT INTO khoahoc VALUES(?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			
			ps.setLong(1,kh.getAdMaKH());
			ps.setNString(2, kh.getAdTenKH());
			ps.setNString(3, kh.getAdNgayKhaiGiang());
			ps.setNString(4, kh.getAdHocPhi());
			ps.setNString(5, kh.getAdKhaiQuat());
			ps.setNString(6,kh.getAdNoiDung());
			ps.setNString(7,kh.getAdShowtester());
			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(KhoaHocsDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	//Cập nhật khoá học
	 public boolean updateKhoahoc(KhoaHocs kh)
	 {
		 String sql="update thread set TenKh=?, NgayKhaiGiang=?,HocPhi=?,KhaiQuat=?,NoiDung=?,ShowTester=? where MaKH=?";
		 try {
			 PreparedStatement ps = connection.prepareCall(sql);
				
			
				ps.setNString(1, kh.getAdTenKH());
				ps.setNString(2, kh.getAdNgayKhaiGiang());
				ps.setNString(3, kh.getAdHocPhi());
				ps.setNString(4, kh.getAdKhaiQuat());
				ps.setNString(5,kh.getAdNoiDung());
				ps.setNString(6,kh.getAdShowtester());
				ps.setLong(7,kh.getAdMaKH());
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (SQLException e) {
			Logger.getLogger(KhoaHocsDAO.class.getName()).log(Level.SEVERE, null, e);
		}
		 
		 return false;
	 }
    //xoá thread
	 public boolean DeleteKhoahoc(long MaKH)
	 {
		 String sql="delete from khoahoc where MaKH=?";
		 try {
			PreparedStatement ps=connection.prepareCall(sql);
			
			ps.setLong(1, MaKH);
			ps.executeUpdate();
			return true;
		 } catch (SQLException e) {
			
			e.printStackTrace();
		}
		 
		 return false;
	 }
 
	 //test trong main
	 public static void main(String[] args) throws SQLException {
		
		 KhoaHocsDAO dao = new KhoaHocsDAO();
	        for (KhoaHocs ds : dao.getKhoaHocListByID("1")) {
	            System.out.println(ds.getAdMaKH() + " - " + ds.getAdTenKH());
	        }
	}
	 
	
}

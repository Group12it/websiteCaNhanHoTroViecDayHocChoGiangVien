package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.BaiTapHocVienNops;

public class BaiTapHocVienNopDAO {
	Connection connection =DBConnect.getConnection();
	
	
public boolean checktrangthainop2(String userid,String chitietid) {
		
		String sql = "SELECT * FROM baitap  where UserID = '" + userid + "' and MaCTKH='"+chitietid+"'";
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
	
public boolean checktrangthainop(String userid,String baitapid) {
		
		String sql = "SELECT * FROM baitap  where UserID = '" + userid + "' and baitapID='"+baitapid+"'";
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
	
	public ArrayList<BaiTapHocVienNops> getBaiTap() throws SQLException{
		 String sql="Select * from baitap";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<BaiTapHocVienNops> list  =new ArrayList<>();
		 while(rs.next()){
			 BaiTapHocVienNops baitapnop =new BaiTapHocVienNops();
			 baitapnop.setBaiTapID(rs.getLong("baitapID"));
			baitapnop.setUserID(rs.getLong("UserID"));
			baitapnop.setTenBT(rs.getString("TenBT"));
			baitapnop.setGhiChu(rs.getString("GhiChu"));
			baitapnop.setMaCTKH(rs.getLong("MaCTKH"));
			baitapnop.setFileBaiTap(rs.getString("FileBaiTap"));
			baitapnop.setThoiGian(rs.getString("ThoiGian"));
			 list.add(baitapnop);
		 }
		 return list;
	}
	
	
	public ArrayList<BaiTapHocVienNops> getBaiTapByMaCT(String MCT) throws SQLException{
		 String sql="Select * from baitap where MaCTKH='"+MCT+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<BaiTapHocVienNops> list  =new ArrayList<>();
		 while(rs.next()){
			 BaiTapHocVienNops baitapnop =new BaiTapHocVienNops();
			 baitapnop.setBaiTapID(rs.getLong("baitapID"));
			baitapnop.setUserID(rs.getLong("UserID"));
			baitapnop.setTenBT(rs.getString("TenBT"));
			baitapnop.setGhiChu(rs.getString("GhiChu"));
			baitapnop.setMaCTKH(rs.getLong("MaCTKH"));
			baitapnop.setFileBaiTap(rs.getString("FileBaiTap"));
			baitapnop.setThoiGian(rs.getString("ThoiGian"));
			 list.add(baitapnop);
		 }
		 return list;
	}
	
	
	public boolean insertKHChitiet(BaiTapHocVienNops bt) {

		String sql = "Insert into baitap  values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setLong(1, bt.getBaiTapID());
			ps.setLong(2,bt.getUserID());
			ps.setNString(3,bt.getTenBT());
			ps.setNString(4,bt.getGhiChu());
			ps.setLong(5,bt.getMaCTKH());
			ps.setNString(6,bt.getFileBaiTap());
			ps.setNString(7, bt.getThoiGian());
			ps.executeUpdate();
			connection.close();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(BaiTapHocVienNopDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}

}

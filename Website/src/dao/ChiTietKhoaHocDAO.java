package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.ChiTietKhoaHoc;;

public class ChiTietKhoaHocDAO {
	Connection connection=DBConnect.getConnection();
	public ArrayList<ChiTietKhoaHoc> getChiTietKhoaHocByID(String MaKH) throws SQLException{
			 
			 String sql="Select * from chitietkhoahoc where MaKH='"+MaKH+"'";
			 PreparedStatement ps=connection.prepareCall(sql);
			 ResultSet rs=ps.executeQuery();
			 ArrayList<ChiTietKhoaHoc> list  =new ArrayList<>();
			 while(rs.next()){
				ChiTietKhoaHoc  chitietkhoahocs=new ChiTietKhoaHoc();
				chitietkhoahocs.setChitietKhoaHocID(rs.getLong("ChiTietKHID"));
				chitietkhoahocs.setTenBaiHoc(rs.getString("TenBaiHoc"));
				chitietkhoahocs.setNoiDung(rs.getString("NoiDung"));
				chitietkhoahocs.setPathBaiGiang(rs.getString("DuongDanBaiGiang"));
				chitietkhoahocs.setPathEbook(rs.getString("DuongDanEbook"));
				chitietkhoahocs.setPathVideo(rs.getString("DuongDanVideo"));
				chitietkhoahocs.setPathBaiTap(rs.getString("DuongDanBaiTap"));
				chitietkhoahocs.setMakh(rs.getLong("MaKH"));
				list.add(chitietkhoahocs);
			 }
			 return list;
		 }
	//thêm thread
	public boolean insertKHChitiet(ChiTietKhoaHoc kh) {
		
		String sql ="insert into chitietkhoahoc VALUES(?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			
			ps.setLong(1,kh.getChitietKhoaHocID());
			ps.setNString(2,kh.getTenBaiHoc());
			ps.setNString(3, kh.getNoiDung());
			ps.setNString(4,kh.getPathBaiGiang());
			ps.setNString(5,kh.getPathEbook());
			ps.setNString(6,kh.getPathVideo());
			ps.setNString(7,kh.getPathBaiTap());
			ps.setLong(8,kh.getMakh());
			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(ChiTietKhoaHocDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	
	
public boolean UpdateKHChitiet(ChiTietKhoaHoc kh) {
		
		String sql = "update chitietkhoahoc set TenBaiHoc=?,NoiDung=?,DuongDanBaiGiang=?,DuongDanEbook=?, DuongDanVideo=?,DuongDanBaiTap=? where ChiTietKHID=?";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			
			ps.setLong(8,kh.getChitietKhoaHocID());
			ps.setNString(1,kh.getTenBaiHoc());
			ps.setNString(2, kh.getNoiDung());
			ps.setNString(3,kh.getPathBaiGiang());
			ps.setNString(4,kh.getPathEbook());
			ps.setNString(5,kh.getPathVideo());
			ps.setNString(6,kh.getPathBaiTap());
			ps.setLong(7,kh.getMakh());
			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(ChiTietKhoaHocDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
public static void main(String[] args) {
	
	ChiTietKhoaHocDAO ct=new ChiTietKhoaHocDAO();
	System.out.println( ct.insertKHChitiet(new ChiTietKhoaHoc(1,"qe","23","23","23","@3","23",1)));
	
}
}

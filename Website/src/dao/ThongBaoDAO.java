package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.ThongBaos;

public class ThongBaoDAO {
Connection connection = DBConnect.getConnection();
	
	
public ArrayList<ThongBaos> getThongbaoListView() throws SQLException{
	 String sql="Select * from viewthongbao";
	 PreparedStatement ps=connection.prepareCall(sql);
	 ResultSet rs=ps.executeQuery();
	 ArrayList<ThongBaos> list  =new ArrayList<>();
	 while(rs.next()){
		ThongBaos tb=new  ThongBaos();
		tb.setMaThongBao(rs.getLong("MaThongBao"));
		tb.setMaKH(rs.getLong("MaKH"));
		tb.setTenThongBao(rs.getString("TenThongBao"));
		tb.setNoiDungThongBao("NoiDungTB");
		tb.setThoiGian(rs.getString("ThoiGianTB"));
	
		list.add(tb);
	 }
	 connection.close();
	 return list;
}



		public ArrayList<ThongBaos> getThongbaoList() throws SQLException{
		 String sql="Select * from thongbao";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<ThongBaos> list  =new ArrayList<>();
		 while(rs.next()){
			ThongBaos tb=new  ThongBaos();
			tb.setMaThongBao(rs.getLong("MaThongBao"));
			tb.setMaKH(rs.getLong("MaKH"));
			tb.setTenThongBao(rs.getString("TenThongBao"));
			tb.setNoiDungThongBao("NoiDungTB");
			tb.setThoiGian(rs.getString("ThoiGianTB"));
		
			list.add(tb);
		 }
		 connection.close();
		 return list;
	}
	
public boolean insertThongBao(ThongBaos tb) {
		
		String sql = "INSERT INTO thongbao VALUES(?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setLong(1,tb.getMaThongBao());
			ps.setLong(2,tb.getMaKH());
			ps.setNString(3,tb.getTenThongBao());
			ps.setNString(4,tb.getNoiDungThongBao());
			ps.setNString(5,tb.getThoiGian());
		ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(ThongBaoDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	
	
	
	
}

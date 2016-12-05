package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.DeThis;

public class DeThiDAO {

	
	
	Connection connection=DBConnect.getConnection();
	

	
	

	public ArrayList<DeThis> getDeThi() throws SQLException{
		 String sql="Select * from dethi ";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<DeThis> list  =new ArrayList<>();
		 while(rs.next()){
			 DeThis  dethis=new DeThis();
			 dethis.setMaDeThi(rs.getLong("MaDeThi"));
			 dethis.setTenDeThi(rs.getString("TenDeThi"));
			 dethis.setMaKH(rs.getLong("MaKH"));
			 dethis.setFile(rs.getString("FileData"));
			 list.add(dethis);
		 }
		 return list;
	}
	
	
	
	public ArrayList<DeThis> getDeThiByMaKH(String MaKH) throws SQLException{
		 String sql="Select * from dethi where MaKH='"+MaKH+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<DeThis> list  =new ArrayList<>();
		 while(rs.next()){
			 DeThis  dethis=new DeThis();
			 dethis.setMaDeThi(rs.getLong("MaDeThi"));
			 dethis.setTenDeThi(rs.getString("TenDeThi"));
			 dethis.setMaKH(rs.getLong("MaKH"));
			 dethis.setFile(rs.getString("FileData"));
			 list.add(dethis);
		 }
		 return list;
	}
	public boolean insertDethi(DeThis u) {
		
		String sql = "Insert into dethi (MaDeThi,TenDeThi,MaKH,FileData) values(?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setLong(1, u.getMaDeThi());
			ps.setNString(2, u.getTenDeThi());
			ps.setLong(3, u.getMaKH());
			ps.setString(4, u.getFile());

			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(DeThiDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}

	public static void main(String[] args) {
		DeThiDAO dt=new DeThiDAO();
		DeThis dts=new DeThis();
		dts.setMaKH(123123123);
		dts.setTenDeThi("412411");
		dts.setMaKH(Long.parseLong("1480223244590"));
		dts.setFile("sdfsdf");
		
		System.out.println(dt.insertDethi(dts));
	}
}

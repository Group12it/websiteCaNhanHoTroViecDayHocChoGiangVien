package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.AdminBaiTap;

public class AdminBaiTapDAO {
	Connection connection = DBConnect.getConnection();
	
	public ArrayList<AdminBaiTap> getAdminBaiTapList() throws SQLException{
		 String sql="Select * from adminbaitap";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<AdminBaiTap> list  =new ArrayList<>();
		 while(rs.next()){
			AdminBaiTap abaitap=new AdminBaiTap();
			abaitap.setIDBaiTap(rs.getLong("IDBaiTap"));
			abaitap.setTenBaiTap(rs.getString("TenBaiTap"));
			abaitap.setNoiDungBaiTap(rs.getString("NoiDung"));
			abaitap.setHanNop(rs.getDate("HanNop").toString());
			abaitap.setGioNop(rs.getString("GioNop"));
			abaitap.setMaChiTietKH(rs.getLong("MaChiTietKH"));
			list.add(abaitap);
		 }
		 connection.close();
		 return list;
	}
	
	
	
	
	public ArrayList<AdminBaiTap> getAdminBaiTapListByIDBT(long IDBaiTap) throws SQLException{
		 String sql="Select * from adminbaitap where IDBaiTap="+IDBaiTap+"";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<AdminBaiTap> list  =new ArrayList<>();
		 while(rs.next()){

			AdminBaiTap abaitap=new AdminBaiTap();
			abaitap.setIDBaiTap(rs.getLong("IDBaiTap"));
			abaitap.setTenBaiTap(rs.getString("TenBaiTap"));
			abaitap.setNoiDungBaiTap(rs.getString("NoiDung"));
			abaitap.setHanNop(rs.getDate("HanNop").toString());
			abaitap.setGioNop(rs.getString("GioNop"));
			abaitap.setMaChiTietKH(rs.getLong("MaChiTietKH"));
			list.add(abaitap);
		 }
		 connection.close();
		 return list;
	}
	public ArrayList<AdminBaiTap> getAdminBaiTapListByID(long IDBaiTap) throws SQLException{
		 String sql="Select * from adminbaitap where MaChiTietKH='"+IDBaiTap+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<AdminBaiTap> list  =new ArrayList<>();
		 while(rs.next()){
			AdminBaiTap abaitap=new AdminBaiTap();
			abaitap.setIDBaiTap(rs.getLong("IDBaiTap"));
			abaitap.setTenBaiTap(rs.getString("TenBaiTap"));
			abaitap.setNoiDungBaiTap(rs.getString("NoiDung"));
			abaitap.setHanNop(rs.getDate("HanNop").toString());
			abaitap.setGioNop(rs.getString("GioNop"));
			abaitap.setMaChiTietKH(rs.getLong("MaChiTietKH"));
			list.add(abaitap);
		 }
		 connection.close();
		 return list;
	}
	
	
public boolean insertAdminBaiTap(AdminBaiTap u) {
		
		String sql = "INSERT INTO adminbaitap VALUES(?,?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setLong(1, u.getIDBaiTap());
			ps.setNString(2, u.getTenBaiTap());
			ps.setNString(3, u.getNoiDungBaiTap());
			ps.setNString(4, u.getHanNop());
			ps.setNString(5, u.getGioNop());
			ps.setLong(6, u.getMaChiTietKH());
			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(AdminBaiTapDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	
	
	public static void main(String[] args) {
		AdminBaiTapDAO adminbaitapdao=new AdminBaiTapDAO();
		AdminBaiTap adminbaitap=new AdminBaiTap();
		try {
			for (AdminBaiTap s : adminbaitapdao.getAdminBaiTapListByID(1)) {
				System.out.println(s.getHanNop());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

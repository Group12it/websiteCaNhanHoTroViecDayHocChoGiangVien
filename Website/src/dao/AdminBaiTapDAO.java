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

public class AdminBaiTapDAO {
	Connection connection = DBConnect.getConnection();
	

	public ArrayList<AdminBaiTap> getAdminBaiTapListByID(long IDBaiTap) throws SQLException{
		 String sql="Select * from adminbaitap where IDBaiTap="+IDBaiTap+"";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<AdminBaiTap> list  =new ArrayList<>();
		 while(rs.next()){

			AdminBaiTap abaitap=new AdminBaiTap();
			abaitap.setTenBaiTap(rs.getString("TenBaiTap"));
			abaitap.setNoiDungBaiTap(rs.getString("NoiDung"));
			abaitap.setHanNop(rs.getDate("HanNop").toString());
			abaitap.setGioNop(rs.getString("GioNop"));
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
			Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	public static void main(String[] args) {
		AdminBaiTapDAO admin=new AdminBaiTapDAO();
		AdminBaiTap a=new AdminBaiTap();
		a.setIDBaiTap(4);
		a.setTenBaiTap("Bài tập 3");
		a.setNoiDungBaiTap("ooooooooooooooooooooooo");
		a.setHanNop("2016-12-12");
		a.setGioNop("12:00:00");
		a.setMaChiTietKH(2);
		admin.insertAdminBaiTap(a);
	}
}

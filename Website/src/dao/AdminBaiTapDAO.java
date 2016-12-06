package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

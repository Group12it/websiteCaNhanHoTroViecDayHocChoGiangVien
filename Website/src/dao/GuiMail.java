package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.Users;

public class GuiMail {
	public ArrayList<Users> getUserbyKhoaHoc(String l) throws SQLException{
	Connection connection=DBConnect.getConnection();
		String sql="Select DISTINCT GROUP_CONCAT(Email) from users,dangkykhoahoc where dangkykhoahoc.UserID= users.UserID and dangkykhoahoc.MaKH='"+l+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<Users> list  =new ArrayList<>();
		 while(rs.next()){
			Users  userss =new Users();
			userss.setUserID(rs.getLong("UserID"));
			userss.setUserEmail(rs.getString("Email"));
			 list.add(userss);
		 }
		 return list;
	}
	
	public static void main(String[] args) throws SQLException {
		
		GuiMail gui=new GuiMail();
		
		System.out.println(gui.getUserbyKhoaHoc("1480223244590"));
	}
}

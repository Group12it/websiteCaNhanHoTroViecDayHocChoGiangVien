package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.Users;

public class UsersDAO {

	
	Connection connection = DBConnect.getConnection();
	
	public ArrayList<Users> getUsersListByID(String ID) throws SQLException{
		 
		 String sql="Select * from users where UserID='"+ID+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<Users> list  =new ArrayList<>();
		 while(rs.next()){
			 Users user=new Users();
			 user.setUserID(rs.getLong("UserID"));
			 user.setUserEmail(rs.getString("Email"));
			 user.setUserPass(rs.getString("Password"));
			 user.setUserRole(rs.getString("Role"));
			 
			 user.setUserHoTen(rs.getString("HoTen"));
			user.setUserNgaySinh(rs.getString("NgaySinh"));
			user.setUserGioiTinh(rs.getString("GioiTinh"));
			user.setUserSDT(rs.getString("SDT"));
			user.setUserHinhAnh(rs.getString("HinhAnh"));
			
			 
			 list.add(user);
			 
		 }
		 return list;
	 }
	
	
	
	public ArrayList<Users> getUsersList() throws SQLException{
		 
		 String sql="Select * from users";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<Users> list  =new ArrayList<>();
		 while(rs.next()){
			 Users user=new Users();
			 user.setUserID(rs.getLong("UserID"));
			 user.setUserEmail(rs.getString("Email"));
			 user.setUserPass(rs.getString("Password"));
			 user.setUserRole(rs.getString("Role"));
			 
			 user.setUserHoTen(rs.getString("HoTen"));
			user.setUserNgaySinh(rs.getString("NgaySinh"));
			user.setUserGioiTinh(rs.getString("GioiTinh"));
			user.setUserSDT(rs.getString("SDT"));
			user.setUserHinhAnh(rs.getString("HinhAnh"));
			
			 
			 list.add(user);
		 }
		 return list;
	 }
	
	// Kiem tra email co bi trung k
	
	
	public boolean checkEmail(String email) {
		
		String sql = "SELECT * FROM users WHERE Email = '" + email + "'";
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

	
	public boolean checkQuyen(String email,String Role) {
		
		String sql = "SELECT * FROM users WHERE Email = '" + email + "' and Role='"+Role+"' and Role='Admin'";
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

	
	
	// Them tai khoan
	public boolean insertUser(Users u) {
		
		String sql = "INSERT INTO users VALUES(?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setLong(1, u.getUserID());
			ps.setNString(2, u.getUserEmail());
			ps.setNString(3, u.getUserPass());
			ps.setNString(4, u.getUserRole());
			ps.setNString(5, u.getUserHoTen());
			ps.setNString(6, u.getUserNgaySinh());
			ps.setNString(7, u.getUserGioiTinh());
			ps.setNString(8, u.getUserSDT());
			ps.setNString(9,u.getUserHinhAnh());
		

			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}

	// kiem tra dang nhap
	public Users login(String email, String password) {
	
		String sql = "select * from users where Email='" + email + "' and Password='" + password + "'";

		PreparedStatement ps;
		try {
			ps = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				Users u = new Users();
				u.setUserID(rs.getLong("UserID"));// khai bÃ¡o trong csdl
				u.setUserEmail(rs.getNString("Email"));
				u.setUserPass(rs.getNString("Password"));
				u.setUserRole(rs.getNString("Role"));
				u.setUserHoTen(rs.getNString("HoTen"));
				u.setUserNgaySinh(rs.getString("NgaySinh"));
				u.setUserHoTen(rs.getString("GioiTinh"));
				u.setUserHoTen(rs.getString("SDT"));
				u.setUserHinhAnh(rs.getNString("HinhAnh"));
				connection.close();
				return u;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	// Kiểm tra đăng nhập

	// kiá»ƒm tra update thông tin cá nhân
	public boolean update(Users u) throws SQLException {
		try {
			
			String sql = "update users SET HoTen = ? , NgaySinh=?,GioiTinh=?,SDT=? WHERE UserID= ?";
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setNString(1, u.getUserHoTen());
			ps.setNString(2, u.getUserNgaySinh());
			ps.setNString(3, u.getUserGioiTinh());
			ps.setNString(4, u.getUserSDT());
			ps.setLong(5, u.getUserID());
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	
	
	public boolean capnhathinhanh(Users u) throws SQLException 
	{
		try {
			String sql = "UPDATE users SET HinhAnh = ? WHERE UserID= ?";
			PreparedStatement ps = connection.prepareCall(sql);
			
			ps.setNString(1, u.getUserHinhAnh());
			ps.setLong(2, u.getUserID());
			int temp=ps.executeUpdate();
			return temp==1;
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}

	
	//hàm kiểm tra đổi password
	public boolean changepassword(Users u) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE users SET Password = ? WHERE UserID= ?";// and Password =?";
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setString(1, u.getUserPass());
			ps.setLong(2, u.getUserID());
			/*ps.setString(3, u.getUserPass());*/
			
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	
	public static void main(String[] args) throws SQLException {
		UsersDAO dao = new UsersDAO();
		System.out.println(dao.checkEmail("nguoiemcuanui@gmail.com"));
				}

}

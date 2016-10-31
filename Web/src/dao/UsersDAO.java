package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.*;

import com.mysql.jdbc.Statement;

import model.Users;
import tools.MD5;

public class UsersDAO {

	// Kiem tra email co bi trung k, nếu trùng thì trả về true
	public boolean checkEmail(String email) {
		Connection connection = DBConnect.getConnection();
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

	// Them tai khoan
	public boolean insertUser(Users u) {
		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO users VALUES(?,?,?,?,?,?,?,?)";
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
			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}


	// kiem tra dang nhap
	public Users login(String email, String password) {
		Connection con = DBConnect.getConnection();
		String sql = "select * from users where Email='" + email + "' and Password='" + password + "'";

		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				Users u = new Users();
				u.setUserID(rs.getLong("UserID"));// khai báo trong csdl
				u.setUserEmail(rs.getString("Email"));
				u.setUserPass(rs.getString("Password"));
				u.setUserRole(rs.getString("Role"));
				u.setUserHoTen(rs.getString("HoTen"));
				u.setUserNgaySinh(rs.getString("NgaySinh"));
				u.setUserHoTen(rs.getString("GioiTinh"));
				u.setUserHoTen(rs.getString("SDT"));

				con.close();
				return u;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
//Kết thúc kiểm tra đăng nhập
	
	//kiểm tra update thông tin tài khoản
	public boolean update(Users u) throws SQLException {
    try {
         Connection connection = DBConnect.getConnection();
         String sql = "UPDATE users SET HoTen = ? , NgaySinh=?,GioiTinh=?,SDT=? WHERE UserID= ?";
         PreparedStatement ps = connection.prepareCall(sql);
         ps.setLong(5, u.getUserID());
         ps.setNString(1,u.getUserHoTen());
         ps.setNString(2, u.getUserNgaySinh());
         ps.setNString(3,u.getUserGioiTinh());
         ps.setNString(4, u.getUserSDT());
         
         int temp = ps.executeUpdate();
         return temp == 1;
    } catch (Exception e) {
         return false;
    }
}

	public static void main(String[] args) throws SQLException {
		UsersDAO dao=new UsersDAO();
		System.out.println(dao.update(new Users(1,"Mác","2016-02-02","Nữ","0000000000")));
	}

}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import connect.DBConnect;
import model.*;

public class DangKyKhoaHocDAO {
	Connection connection;
	public DangKyKhoaHocDAO()
	{
		connection = DBConnect.getConnection();
	}
	public boolean updateThemVao(DangKyKhoaHoc dkkh) throws SQLException {
		try {
			
			String sql = "update dangkykhoahoc set chophep='1' where UserID=? and MaKH=?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setLong(1, dkkh.getUserId());
			ps.setLong(2, dkkh.getMaKH());
			
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean deleteDangKy(DangKyKhoaHoc dkkh) throws SQLException {
		try {
			
			String sql = "delete from dangkykhoahoc where UserID=? and MaKH=?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setLong(1, dkkh.getUserId());
			ps.setLong(2, dkkh.getMaKH());
			
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public static void main(String[] args) {
		DangKyKhoaHocDAO dangkydao=new DangKyKhoaHocDAO();
		DangKyKhoaHoc dangky=new DangKyKhoaHoc();
		dangky.setUserId(9090);
		dangky.setMaKH(123);
		try {
			System.out.println(dangkydao.deleteDangKy(dangky));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

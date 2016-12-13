package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.DiemThiTracNghiem;

public class DiemThiTracNghiemDAO {
	public boolean Chamdiemtudong(DiemThiTracNghiem  diem) {
		Connection connection =DBConnect.getConnection();
		String sql = "insert into  diemthitracnghiem values (?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setLong(1, diem.getMaKH());
			ps.setLong(2,diem.getUserID());
			ps.setFloat(3, diem.getDiemSo());
			ps.setNString(4, diem.getXepLoai());

			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(DiemThiTracNghiemDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
}

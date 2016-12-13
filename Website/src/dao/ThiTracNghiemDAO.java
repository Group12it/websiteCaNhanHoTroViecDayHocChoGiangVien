package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.ThiTracNghiems;


public class ThiTracNghiemDAO {

public boolean baithihocvien(ThiTracNghiems thi) {
		Connection connection =DBConnect.getConnection();
		String sql = "insert into  dapanhv values (?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setLong(1, thi.getDapAnID());
			ps.setNString(2,thi.getChuoiDapAn());
			ps.setLong(3, thi.getUserID());
			ps.setLong(4, thi.getDeThiID());

			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(ThiTracNghiemDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
}

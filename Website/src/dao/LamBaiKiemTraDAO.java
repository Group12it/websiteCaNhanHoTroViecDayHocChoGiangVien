package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.CauHoi;
import model.LamBaiKiemTra;

public class LamBaiKiemTraDAO {
	Connection connection = DBConnect.getConnection();

	public boolean LamBai(LamBaiKiemTra l) {

		String sql = "Insert into lambaikiemtra  values(?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setLong(1, l.getMaKH());
			ps.setLong(2,l.getMaCH());
			ps.setLong(3, l.getUserID());
			
			ps.setNString(4, l.getDapAn());
						ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(CauHoiDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
}

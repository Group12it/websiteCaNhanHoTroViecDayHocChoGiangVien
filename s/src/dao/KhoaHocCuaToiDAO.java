package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.KhoaHocs;

public class KhoaHocCuaToiDAO {
	Connection connection = DBConnect.getConnection();

	public ArrayList<KhoaHocs> getKhoaHocListByID(String userid) throws SQLException {
		String sql = "SELECT DISTINCT TenKH from khoahoc,dangkykhoahoc,users where khoahoc.MaKH=dangkykhoahoc.MaKH"
				+ " and dangkykhoahoc.UserID=users.UserID and"
				+ "users.UserID='"+userid+"' and dangkykhoahoc.chophep='1'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<KhoaHocs> list = new ArrayList<>();
		while (rs.next()) {
			KhoaHocs khoahoc = new KhoaHocs();
			khoahoc.setAdMaKH(rs.getLong("MaKH"));
			khoahoc.setAdTenKH(rs.getString("TenKH"));
			khoahoc.setAdNgayKhaiGiang(rs.getString("NgayKhaiGiang"));
			khoahoc.setAdHocPhi(rs.getString("HocPhi"));
			khoahoc.setAdKhaiQuat(rs.getString("KhaiQuat"));
			khoahoc.setAdNoiDung(rs.getString("NoiDung"));
			khoahoc.setAdShowtester(rs.getString("ShowTester"));

			list.add(khoahoc);
		}
		return list;
	}

}

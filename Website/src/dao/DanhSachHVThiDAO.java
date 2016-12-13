package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.DSHVlamBaiThi;

public class DanhSachHVThiDAO {


	Connection connection=DBConnect.getConnection();
		public ArrayList<DSHVlamBaiThi> getDSHVThiByDeThi(String makh) throws SQLException{
		 String sql="Select * from select * from users, dapanhv where dapanhv.UserID=users.UserID and dapanhv.DeThiID='"+makh+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<DSHVlamBaiThi> list  =new ArrayList<>();
		 while(rs.next()){
			 DSHVlamBaiThi dshvthi=new DSHVlamBaiThi();
			 dshvthi.setDeThiID(rs.getLong("DeThiID"));
			dshvthi.setMaKH(rs.getLong("MaKH"));
			dshvthi.setDapAnID(rs.getLong("DapAnID"));
			 dshvthi.setUserID(rs.getLong("UserID"));
			 dshvthi.setEmail(rs.getString("Email"));
			 dshvthi.setHoTen(rs.getString("HoTen"));
			
			 
			 list.add(dshvthi);
		 }
		 return list;
	}
	
}

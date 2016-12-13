package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.DapAnHocViens;

public class DapAnHocVienThiDAO {
	Connection connection=DBConnect.getConnection();

	public ArrayList<DapAnHocViens> getDapAnByID(long idDapAn) throws SQLException{
		 String sql="Select * from dapanhv where DapAnID='"+idDapAn+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<DapAnHocViens> list  =new ArrayList<>();
		 while(rs.next()){
			 DapAnHocViens dapanhv=new DapAnHocViens();
			
			 dapanhv.setDapAnID(rs.getInt("DapAnID"));
			 dapanhv.setChuoiDapAn(rs.getString("ChuoiDapAn"));
			 dapanhv.setUserID(rs.getLong("UserID"));
			 dapanhv.setDeThiID(rs.getLong("DeThiID"));
			
			 list.add(dapanhv);
		 }
		 return list;
	}
}

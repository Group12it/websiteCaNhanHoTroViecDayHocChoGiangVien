package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.CauHoi;
import model.DeThis;

public class CauHoiDAO {

	Connection connection =DBConnect.getConnection();
	public ArrayList<CauHoi> getCauHoiList() throws SQLException{
		 String sql="Select * from cauhoi";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<CauHoi> list  =new ArrayList<>();
		 while(rs.next()){
			 CauHoi cauhois=new CauHoi();
			 cauhois.setMaCau(rs.getLong("MaCH"));
			 cauhois.setMaKH(rs.getLong("MaKH"));
			 cauhois.setNoiDung(rs.getString("NoiDung"));
			 cauhois.setDanA(rs.getString("A"));
			 cauhois.setDanB(rs.getString("B"));
			 cauhois.setDanC(rs.getString("C"));
			 cauhois.setDanD(rs.getString("D"));
			 cauhois.setDanDung(rs.getString("DADung"));
			 list.add(cauhois);
		 }
		 return list;
	}
	
	public ArrayList<CauHoi> getCauHoiByMaKH(String MaKH) throws SQLException{
		 String sql="Select * from cauhoi where MaKH='"+MaKH+"'";
		 PreparedStatement ps=connection.prepareCall(sql);
		 ResultSet rs=ps.executeQuery();
		 ArrayList<CauHoi> list  =new ArrayList<>();
		 while(rs.next()){
			 CauHoi cauhois=new CauHoi();
			 cauhois.setMaCau(rs.getLong("MaCH"));
			 cauhois.setMaKH(rs.getLong("MaKH"));
			 cauhois.setNoiDung(rs.getString("NoiDung"));
			 cauhois.setDanA(rs.getString("A"));
			 cauhois.setDanB(rs.getString("B"));
			 cauhois.setDanC(rs.getString("C"));
			 cauhois.setDanD(rs.getString("D"));
			 cauhois.setDanDung(rs.getString("DADung"));
			 list.add(cauhois);
		 }
		 return list;
	}
		
		
		public boolean CauHoi(CauHoi ch) {

			String sql = "Insert into cauhoi  values(?,?,?,?,?,?,?,?)";
			try {
				PreparedStatement ps = connection.prepareCall(sql);

				ps.setLong(1, ch.getMaCau());
				ps.setLong(2, ch.getMaKH());
				ps.setNString(3, ch.getNoiDung());
				ps.setNString(4, ch.getDanA());
				ps.setNString(5, ch.getDanB());
				ps.setNString(6, ch.getDanC());
				ps.setNString(7, ch.getDanD());
				ps.setNString(8, ch.getDanDung());
				ps.executeUpdate();
				
				return true;
			} catch (SQLException ex) {
				Logger.getLogger(CauHoiDAO.class.getName()).log(Level.SEVERE, null, ex);
			}
			return false;
		}
		
		
		public static void main(String[] args) {
			
			CauHoiDAO cau=new CauHoiDAO();
		
			CauHoi ch=new CauHoi();

			
			ch.setMaCau(Long.parseLong("1"));
			ch.setMaKH(Long.parseLong("1"));
			ch.setNoiDung("dsfsd");
			ch.setDanA("sfdsf");
			ch.setDanB("dfdsf");
			ch.setDanC("dfsd");
			ch.setDanD("dfds");
			ch.setDanDung("d");
			
			
			
			System.out.println(cau.CauHoi(ch));
		}
}

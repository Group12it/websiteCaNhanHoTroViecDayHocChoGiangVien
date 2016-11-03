package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.Threadadmin;

public class Thread {
	 // Them tai khoan
    public boolean InsertThread(Threadadmin u) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO thread VALUES(?,?,?)";
        String t="select Email from users";
        
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, u.getThreadID());
            ps.setString(2, u.getTenThread());
          /*  ps.setDate(3, (Date) u.getNgaytaothread());*/
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(Thread.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public boolean UpdateThread(Threadadmin u) {
        Connection connection = DBConnect.getConnection();
        String sql = "update thread set MaThead,TenThread,NgayTao  ";
      
        
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, u.getThreadID());
            ps.setString(2, u.getTenThread());
//            ps.setDate(3, (Date) u.getNgaytaothread());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(Thread.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    
}

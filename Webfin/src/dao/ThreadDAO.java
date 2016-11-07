package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.Threadadmin;

public class ThreadDAO {
	 // Them tai khoan
    public boolean InsertThread(Threadadmin u) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO thread VALUES(?,?,?)";
         
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, u.getThreadID());
            ps.setString(2, u.getTenThread());
            ps.setString(3, u.getNgaytaothread());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ThreadDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            ps.setString(3 ,u.getNgaytaothread());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ThreadDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    
}

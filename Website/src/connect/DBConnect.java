package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    
    public static Connection getConnection(){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web?autoReconnect=true&useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "admin");
            //conn = DriverManager.getConnection("jdbc:mysql://node177650-nhom12it.jelastic.servint.net/web?autoReconnect=true&useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "CCJD98OftR");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static void main(String[] args) {
        System.out.println(getConnection());
    }
    
}

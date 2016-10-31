package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/image")
public class image extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  public image() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

        PrintWriter pw = response.getWriter();
        /*
        Database connection, database name is test
        */
        String connectionURL = "jdbc:mysql://localhost:3306/web";
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            /*
            Database connection, database id is root and password is blank
            */
            con = DriverManager.getConnection(connectionURL, "root", "");
            PreparedStatement ps = con.prepareStatement("INSERT INTO picture(image) VALUES(?)");
            /*
            inserting image in  pictures table*/
            File file = new File("C:\\pic.jpg");

            FileInputStream fs = new FileInputStream(file);

            ps.setBinaryStream(1,fs,fs.available());
            int i = ps.executeUpdate();

            if(i!=0){
              pw.println("image inserted successfully");
            }
            else{
              pw.println("problem in image insertion");
            }
        }
        catch (Exception e){
        System.out.println(e);
        }

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String connectionURL = "jdbc:mysql://localhost:3306/web";
		    Connection con=null;
		    try{
		        Class.forName("com.mysql.jdbc.Driver").newInstance();
		        /*
		        Database connection, database id is root and password is blank
		        */
		        con=DriverManager.getConnection(connectionURL,"root","");
		        Statement st1=con.createStatement();
		        /*
		        select the image from the picture table    .
		        */
		        ResultSet rs1 = st1.executeQuery("select image from picture where id=1");
		        String imgLen="";
		        if(rs1.next()){
		            imgLen = rs1.getString(1);
		        }
		        rs1 = st1.executeQuery("select image from picture where id=1");

		        if(rs1.next()){
		            int len = imgLen.length();
		            byte [] rb = new byte[len];

		            /* retrieving image in binery format*/

		            InputStream readImg = rs1.getBinaryStream(1);
		            int index=readImg.read(rb, 0, len);

		            System.out.println("index"+index);
		            st1.close();

		            response.reset();
		            response.setContentType("image/jpg");
		            response.getOutputStream().write(rb,0,len);
		            response.getOutputStream().flush();
		        }
		    }
		    catch (Exception e){
		      e.printStackTrace();
		    }
	
	}

}

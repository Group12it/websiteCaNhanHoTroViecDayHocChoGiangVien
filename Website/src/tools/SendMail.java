package tools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import connect.DBConnect;

public class SendMail {

	public static boolean sendMail( String to, String subject, String text) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("nhom12it@gmail.com", "nhom12spkt");
			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setHeader("Content-Type", "text/plain; charset=UTF-8");
			message.setFrom(new InternetAddress("nhom12it@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(text);
			Transport.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public static void main(String[] args) {
		
//		try {
//			Connection con=DBConnect.getConnection();
//			Statement stmt=con.createStatement();
//			String sql1="SELECT GROUP_CONCAT(Email)FROM users";
//			ResultSet rs=stmt.executeQuery(sql1);
//			while(rs.next()) {
//			String ms=rs.getString("Email");
//			System.out.println(ms);
//			}}
//		catch(Exception e){
//			
//		}
//	System.out.println(sendMail("luumac2801@gmail.com,nguoiemcuanui@gmail.com,vanbinh628@gmail.com", "subject"," text"));
	}
}

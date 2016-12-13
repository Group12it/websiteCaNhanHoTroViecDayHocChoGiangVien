package tools;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.internet.InternetAddress;

public class Getmail {
	public static void getMails() throws MessagingException {
		Properties pro = System.getProperties();
		pro.put("mail.imap.host", "imap.gmail.com");
		pro.put("mail.imap.port", "465");
		pro.put("mail.store.protocol", "imap");
		pro.put("mail.imap.auth", "true");
		pro.put("mail.imap.socketFactory.class", javax.net.ssl.SSLServerSocketFactory.class.getName());

		Session session = Session.getDefaultInstance(pro, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication("nhom12it@gmail.com", "nhom12spkt");

			}
		});

			Store store =session.getStore();
			store.connect();
			
			Folder [] folders=store.getDefaultFolder().list();
			for(Folder folder:folders){
				if(!folder.isOpen()){
					folder.isOpen();
				}
				System.out.println(folder.getFullName());
				Message [] messages =folder.getMessages();
				for(Message message:messages){
					String from="";
					InternetAddress[] addresses=(InternetAddress[]) message.getFrom();
					
					for(InternetAddress add :addresses){
						from+=add.getAddress();
						
						
					}
					System.out.println(from);
					System.out.println(message.getSubject());
					System.out.println(message.getSentDate());
					System.out.println("----------------------------------");
					
				}
			}
			
	}
	public static void main(String[] args) {
		try {
			System.out.println("Get");
			getMails();
			System.out.println("Finish");
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

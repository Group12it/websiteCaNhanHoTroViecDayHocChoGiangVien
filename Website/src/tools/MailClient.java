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
import javax.mail.internet.MimeMessage;

public class MailClient {

		public static void getMail() throws NoSuchProviderException,MessagingException{
			Properties pro =System.getProperties();
			pro.put("mail.pop3.host","pop.gmail.com");
			//pro.put("mail.smtp.auth","true");
			pro.put("mail.pop3.port","995");
			pro.put("mail.pop3.protocol","pop3");
			pro.put("email.pop3.socketFactory.class",javax.net.ssl.SSLServerSocketFactory.class.getName() );
			
			Session session =Session.getDefaultInstance(pro,new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication("nhom12it@gmail.com","nhom12spkt");
			}
			});
			
			Store store=session.getStore();
			store.connect();
			Folder[] folders=store.getDefaultFolder().list("*");
			
			for(Folder folder:folders){
				if(!folder.isOpen()){
					folder.open(Folder.READ_ONLY);
					
				}
				System.out.println(" #["+folder.getFullName()+"]");
				Message [] messages=folder.getMessages();
				for(Message message:messages){
					String from="";
					InternetAddress[] addresses=(InternetAddress[]) message.getFrom();
					for(InternetAddress address:addresses){
						from+=address.getAddress();
					}
					System.out.println("   + From:  "+from);
					System.out.println("   + sub:"+message.getSubject());
					System.out.println("+ time: "+message.getSentDate());
					
				}
			}
			
			
			
			
		}
		public static void main(String[] args) {
			try {
				System.out.println("get mail");
				
				getMail();
				System.out.println("Finish");
				
			} catch (NoSuchProviderException e) {
				System.out.println("err");
				e.printStackTrace();
			} catch (MessagingException e) {
				System.out.println("err");
				e.printStackTrace();
			}
		}
}

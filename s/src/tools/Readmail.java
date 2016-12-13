package tools;

import java.util.Properties;
import java.util.*;
import javax.mail.*;

public class Readmail {


	public static void main(String[] args) {
        Properties props = new Properties();
        props.setProperty("mail.store.protocol", "imaps");
        try {
            Session session = Session.getInstance(props, null);
            Store store = session.getStore();
            store.connect("imap.gmail.com", "nhom12it@gmail.com", "nhom12spkt");
            Folder inbox = store.getFolder("INBOX");
            inbox.open(Folder.READ_ONLY);
            Message msg = inbox.getMessage(inbox.getMessageCount());
            Address[] in = msg.getFrom();
            for (Address address : in) {
                System.out.println("FROM:" + address.toString());
            }
            Multipart mp = (Multipart) msg.getContent();
            BodyPart bp = mp.getBodyPart(0);
            System.out.println("SENT DATE:" + msg.getSentDate());
            System.out.println("SUBJECT:" + msg.getSubject());
            System.out.println("CONTENT:" + bp.getContent());
        } catch (Exception mex) {
            mex.printStackTrace();
        }
    }
	
	
	
	/*
	

   public static void check(String host, String storeType, String user,
      String password) 
   {
      try {

      //create properties field
      Properties properties = new Properties();

      properties.put("mail.pop3.host", host);
      properties.put("mail.pop3.port", "465");
      properties.put("mail.pop3.starttls.enable", "true");
      properties.setProperty("mail.store.protocol", "imaps");
      Session emailSession = Session.getDefaultInstance(properties);
      Session session = Session.getInstance(properties, null);
      //create the POP3 store object and connect with the pop server
      Store store = emailSession.getStore("pop3s");
   //   Store store = session.getStore();
      store.connect(host, user, password);

      //create the folder object and open it
      Folder emailFolder = store.getFolder("INBOX");
      emailFolder.open(Folder.READ_WRITE);

      	
      // retrieve the messages from the folder in an array and print it
      Message[] messages = emailFolder.getMessages();
      System.out.println("messages.length---" + messages.length);

      for (int i = 0, n = messages.length; i < n; i++) {
         Message message = messages[i];
         System.out.println("---------------------------------");
         System.out.println("Email Number " + (i + 1));
         System.out.println("Subject: " + message.getSubject());
         System.out.println("From: " + message.getFrom()[0]);
         System.out.println("Text: " + message.getContent().toString());
         System.out.println(message.getReceivedDate());
        
      }

      //close the store and folder objects
      emailFolder.close(false);
      store.close();

      } catch (NoSuchProviderException e) {
         e.printStackTrace();
      } catch (MessagingException e) {
         e.printStackTrace();
      } catch (Exception e) {
         e.printStackTrace();
      }
   }

   public static void main(String[] args) {
	  
	   
	  String host = "pop.gmail.com";// change accordingly
      String mailStoreType = "pop3";
      String username = "nhom12it@gmail.com";// change accordingly
      String password = "nhom12spkt";// change accordingly

      check(host, mailStoreType, username, password);
	   
	   
	         Properties props = new Properties();
	        props.setProperty("mail.store.protocol", "imaps");
	        try {
	            Session session = Session.getInstance(props, null);
	            Store store = session.getStore();
	            store.connect("imap.gmail.com", "nhom12it@gmail.com", "nhom12spkt");
	            Folder inbox = store.getFolder("INBOX");
	            inbox.open(Folder.READ_ONLY);
	            Message msg = inbox.getMessage(inbox.getMessageCount());
	            Address[] in = msg.getFrom();
	            for (Address address : in) {
	                System.out.println("FROM:" + address.toString());
	            }
	            Multipart mp = (Multipart) msg.getContent();
	            BodyPart bp = mp.getBodyPart(0);
	            System.out.println("SENT DATE:" + msg.getSentDate());
	            System.out.println("SUBJECT:" + msg.getSubject());
	            System.out.println("CONTENT:" + bp.getContent());
	        } catch (Exception mex) {
	            mex.printStackTrace();
	        }
	    }
	   */

   }


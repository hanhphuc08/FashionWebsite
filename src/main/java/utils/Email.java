package utils;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
	public static void sendEmail(String recipient, String subject, String content) throws MessagingException{
		 String host = "smtp.gmail.com";
	        String port = "587";
	        String senderEmail = "tuongporo9x2004@gmail.com";
	        String senderPassword = "ivux piaw apqu szdb"; 

	        Properties props = new Properties();
	        props.put("mail.smtp.host", host);
	        props.put("mail.smtp.port", port);
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.starttls.enable", "true");

	        Session session = Session.getInstance(props, new Authenticator() {

	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(senderEmail, senderPassword);
	            }
	        });

	        Message message = new MimeMessage(session);
	        message.setFrom(new InternetAddress(senderEmail));
	        message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
	        message.setSubject(subject);
	        message.setContent(content, "text/html; charset=UTF-8");

	        Transport.send(message);
	    
	}
}

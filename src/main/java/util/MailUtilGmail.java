package util;

import javax.mail.*;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class MailUtilGmail {
    public static void sendMail(String to, String from,
                                String subject, String body, boolean bodyIsHTML)
            throws MessagingException {

        try{
            // 1 - get a mail session
            Properties props = new Properties();
            props.put("mail.transport.protocol", "smtps");
            props.put("mail.smtps.host", "smtp.gmail.com");
            props.put("mail.smtps.port", 465);
            props.put("mail.smtps.auth", "true");
            props.put("mail.smtps.quitwait", "false");
            Session session = Session.getDefaultInstance(props);
            session.setDebug(true);
            // 2 - create a message
            Message message = new MimeMessage(session);
            message.setSubject(subject);
            if (bodyIsHTML) {
                message.setContent(body, "text/html");
            } else {
                message.setText(body);
            }

            // 3 - address the message
            Address fromAddress = new InternetAddress(from);
            Address toAddress = new InternetAddress(to);
            message.setFrom(fromAddress);
            message.setRecipient(Message.RecipientType.TO, toAddress);

            // 4 - send the message
            Transport transport = session.getTransport();
            transport.connect("smtp.gmail.com", 465, "testing05082003@gmail.com", "ihlsbnxavzcstowl");
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        } catch (MessagingException e) {
            String errorMessage = "Lỗi khi gửi email: " + e.getMessage();
            System.err.println(errorMessage);
        }
    }
    public static void getMail(String to, String from, String subject, String body, String content, String businessname, String phonenum, boolean bodyIsHTML)
        throws MessagingException {
        try{
            // 1 - get a mail session
            Properties props = new Properties();
            props.put("mail.transport.protocol", "smtps");
            props.put("mail.smtps.host", "smtp.gmail.com");
            props.put("mail.smtps.port", 465);
            props.put("mail.smtps.auth", "true");
            props.put("mail.smtps.quitwait", "false");
            Session session = Session.getDefaultInstance(props);
            session.setDebug(true);
            // 2 - create a message
            Message message = new MimeMessage(session);
            message.setSubject(subject);
            if (bodyIsHTML) {
                message.setContent(content, "text/html");
            } else {
                message.setText(content);
            }

            // 3 - address the message
            Address fromAddress = new InternetAddress(from);
            Address toAddress = new InternetAddress("quangcuatuonglai@gmail.com");
            message.setFrom(fromAddress);
            message.setRecipient(Message.RecipientType.TO, toAddress);

            // 4 - send the message
            Transport transport = session.getTransport();
            transport.connect("smtp.gmail.com", 465, "testing05082003@gmail.com", "ihlsbnxavzcstowl");
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        } catch (MessagingException e) {
            String errorMessage = "Lỗi khi gửi email: " + e.getMessage();
            System.err.println(errorMessage);
        }
    }
}

package Controller;
import util.MailUtilGmail;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/email", name = "MailServlet")
public class MailController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/login.jsp";
        String action = request.getParameter("action");
        //      <--- Send Mail --->
        if (action.equals("send")){
            url = send(request,response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    protected String send (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String customeremail = request.getParameter("customeremail");
        String mailcontent = request.getParameter("content");
        String businessname = request.getParameter("businessname");
        String phonenum = request.getParameter("phonenum");
        String url;
        try{

            // send email to user
            String to = customeremail;
            String from = "caxsoft@tech.com";
            String subject = "Caxsoft - Confirmation for email sending";
            String content = mailcontent;
            String body =
                    "<h1 style=\"color: #633b00\">Coza</h1>\n" +
                            "<h2 style=\"color: #633b00\">Welcome to Coza!</h2>\n" +
                            "<p>Congratulations, you have successfully activated your customer account. Next time you make a purchase, please log in to make payment more convenient. Come to our store\n" +
                            "</p>\n" +
                            "<button style=\"background-color: #d7ffef; width: 200px; height: 100px; border-radius: 10px\">\n" +
                            "<a href=\"http://localhost:8080/demo4_war_exploded/\" style=\"color: #1c1e28\">Go To Our Store</a>\n" +
                            "</button>" +
                            "<p>If you have any questions, don't hesitate to contact us at:\n" +
                            "\t<a href=\"mailto:quangcuatuonglai@gmail.com\" style=\"font-size:14px;text-decoration:none;color:#1666a2\" target=\"_blank\">quangcuatuonglai@gmail.com</a></p>";

            boolean isBodyHTML = true;
            try {
                MailUtilGmail.sendMail(to, from, subject, body,
                        isBodyHTML);
                MailUtilGmail.getMail(to, from, subject, body, content, customeremail, businessname,
                        isBodyHTML);
            } catch (MessagingException e) {
                String errorMessage
                        = "ERROR: Unable to send email. "
                        + "Check Tomcat logs for details.<br>"
                        + "NOTE: You may need to configure your system "
                        + "as described in chapter 14.<br>"
                        + "ERROR MESSAGE: " + e.getMessage();
                request.setAttribute("errorMessage", errorMessage);
                this.log(
                        "Unable to send email. \n"
                                + "Here is the email you tried to send: \n"
                                + "=====================================\n"
                                + "TO: " + customeremail + "\n"
                                + "FROM: " + from + "\n"
                                + "SUBJECT: " + subject + "\n\n"
                                + body + "\n\n");
            }
        } finally {
            {
                url = "/index.jsp";
            }
        }
        return url;
    }
}

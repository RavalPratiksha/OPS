using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;


public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        // get password from database//

        string strpassword = "Select Password from Employer where Email=txtemail.Text";



        MailMessage msgMail = new MailMessage();

        msgMail.To = txtemail.Text;

        msgMail.From = "Onlinejobportal@gmail.com";
        msgMail.Subject = "Your Password has been sended." + strpassword;

        msgMail.BodyFormat = MailFormat.Html;
        string strbody = "<b>Hello World</b>" +
           " <font color=\"red\">Your Password is:" + strpassword + "</font>";

        msgMail.Body = strbody;

        //SmtpMail.SmtpServer = "mail.dotnetexpert.info";

        SmtpMail.Send(msgMail);

        lblmessage.Text = "Password successfully sent to your emil address...";
       
    }
}
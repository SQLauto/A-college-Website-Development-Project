using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;

public partial class webmaster_webmaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/App_Data/comment.txt");
            string mailBody = System.IO.File.ReadAllText(fileName);

            mailBody = mailBody.Replace("##Name##", txtName.Text);
            mailBody = mailBody.Replace("##Email##", txtEmailAddress.Text);
            mailBody = mailBody.Replace("##Phone##", txtPhone.Text);

            mailBody = mailBody.Replace("##Query##", txtComments.Text);

            MailMessage myMessage = new MailMessage();
            myMessage.Subject = "Response from web site";
            myMessage.Body = mailBody;

            myMessage.From = new MailAddress("shamserfakir@shamserfakircollegebd.com", "College website");
            myMessage.To.Add(new MailAddress("webmaster@shamserfakircollegebd.com", "webmaster"));

            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.Send(myMessage);

            lblMessage.Visible = true;
            FormTable.Visible = false;

        }
    }
}
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

public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (txtPhoneHome.Text != string.Empty || txtPhoneBusiness.Text != string.Empty)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
            string mailBody = System.IO.File.ReadAllText(fileName);

            mailBody = mailBody.Replace("##Name##", txtName.Text);
            mailBody = mailBody.Replace("##Email##", txtEmailAddress.Text);
            mailBody = mailBody.Replace("##HomePhone##", txtPhoneHome.Text);
            mailBody = mailBody.Replace("##BusinessPhone##", txtPhoneBusiness.Text);
            mailBody = mailBody.Replace("##Comments##", txtComments.Text);

            MailMessage myMessage = new MailMessage();
            myMessage.Subject = "Response from web site";
            myMessage.Body = mailBody;

            myMessage.From = new MailAddress("admin@ebrahimkhancollegebd.com", "Sender Name Here");
            myMessage.To.Add(new MailAddress("info@ebrahimkhancollegebd.com", "Receiver Name Here"));

            SmtpClient mySmtpClient = new SmtpClient();
          
           mySmtpClient.Send(myMessage);

            lblMessage.Visible = true;
            FormTable.Visible = false;
        }
    }
}

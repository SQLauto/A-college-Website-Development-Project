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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        // Validate the user against the Membership framework user store
        if (Membership.ValidateUser(UserName.Text, Password.Text))
        {

            // Log the user into the site
            FormsAuthentication.RedirectFromLoginPage(UserName.Text, RememberMe.Checked);
            Session["isMemberLoggedIn"] = true;
            Response.Redirect("~/Memberships/update.aspx");
        }
        // If we reach here, the user's credentials were invalid
        InvalidCredentialsMessage.Visible = true;
    }
}

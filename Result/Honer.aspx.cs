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

public partial class Result_Honer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext context = new DataClassesDataContext();
        dynamic b = new dynamic();
        var query = (from p in context.dynamics where p.id == 16 select p).Single();

        var subject = query.description;


        ph1.Text = subject;

    }
}

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

public partial class Memberships_update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        using (DataClassesDataContext context = new DataClassesDataContext())
        {


            var query = (from p in context.dynamics where p.name== DropDownList1.SelectedValue select p).Single();

            var d = query.description;


       

            FreeTextBox1.Text = d;


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext context = new DataClassesDataContext();
        dynamic b = new dynamic();
        var query = (from p in context.dynamics where p.name == DropDownList1.SelectedValue select p).Single();

        query.description = FreeTextBox1.Text;


        context.SubmitChanges();

    }
    public string uploadFile(string fileName, string folderName)
    {
        if (fileName == "")
        {
            return "Invalid filename supplied";
        }
        if (fileUpload.PostedFile.ContentLength == 0)
        {
            return "Invalid file content";
        }
        fileName = System.IO.Path.GetFileName(fileName);
        if (folderName == "")
        {
            return "Path not found";
        }
        try
        {
            if (fileUpload.PostedFile.ContentLength <= 2048000)
            {
                fileUpload.PostedFile.SaveAs(Server.MapPath(folderName) + "\\" + fileName);
                return "File uploaded successfully";
            }
            else
            {
                return "Unable to upload,file exceeds maximum limit";
            }
        }
        catch (UnauthorizedAccessException ex)
        {
            return ex.Message + "Permission to upload file denied";
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string strFilename, strMessage;
        strFilename = fileUpload.PostedFile.FileName.ToString();
        strMessage = uploadFile(strFilename, ConfigurationSettings.AppSettings["folderPath"]);
        lblMessage.Text = strMessage;


    }
}

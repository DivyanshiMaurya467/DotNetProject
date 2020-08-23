using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MediaGallery : System.Web.UI.Page
{
    Class1 dl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = dl.da.CategoryTables;
        Repeater1.DataBind();
        if (Session["uid"] != null)
        {
            Literal1.Text = Session["Un"].ToString();
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}
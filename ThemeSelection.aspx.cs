using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThemeSelection : System.Web.UI.Page
{
    Class1 dl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = dl.da.CategoryTables;
        Repeater1.DataBind();
        if (Session["uid"] != null)
        {
          Literal5.Text = Session["Un"].ToString();
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("MagneetoTheme.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("GlowTheme.aspx");
    }


    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("CeilingTheme.aspx");
    }

}
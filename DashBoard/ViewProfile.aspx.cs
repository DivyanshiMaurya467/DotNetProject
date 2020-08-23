using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DashBoard_ViewProfile : System.Web.UI.Page
{ Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        var q = (from a in c.da.AdminTables
                 select a).FirstOrDefault();
        Literal1.Text = q.AdminName;
        Literal2.Text = q.AdminEmail;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DashBoard/ChangePd.aspx");
    }
}
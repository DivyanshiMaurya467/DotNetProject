using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_AdminContact : System.Web.UI.Page
{
    Class1 c = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        var q = from a in c.da.ContactTables select a;
        GridView1.DataSource = q;
       GridView1.DataBind();
    }
}
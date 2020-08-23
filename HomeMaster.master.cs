using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeMaster : System.Web.UI.MasterPage
{
    Class1 dl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = dl.da.CategoryTables;
        Repeater1.DataBind();
    }
}

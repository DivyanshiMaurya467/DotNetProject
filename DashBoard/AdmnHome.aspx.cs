using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DashBoard_AdmnHome : System.Web.UI.Page
{
    Class1 c = new Class1();

    public string a;
    public string b;
    public string c1;
    public string d;
    protected void Page_Load(object sender, EventArgs e)

    {
        if (!IsPostBack)
        {
            bind();
        }


        Literal1.Text = c.da.ProfileTables.Count().ToString();
        Literal2.Text = c.da.AddProductTables.Count().ToString();
        Literal3.Text = c.da.ContactTables.Count().ToString();
        Literal4.Text = c.da.CartTables.Count().ToString();

        this.a = c.da.ProfileTables.Count().ToString();
        this.b = c.da.AddProductTables.Count().ToString();
        this.c1 = c.da.ContactTables.Count().ToString();
        this.d = c.da.CartTables.Count().ToString();

        var q = (from a in c.da.ContactTables
                
                 select new { a.Name,a.Message}).FirstOrDefault();

        bind();
    }
    void bind()
    {
        Repeater1.DataSource = c.da.ContactTables;
        Repeater1.DataBind();
    }
   
}
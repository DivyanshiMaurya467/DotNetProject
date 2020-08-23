using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_AViewReview : System.Web.UI.Page
{
    Class1 dl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    void bind()
    {
        Repeater1.DataSource = dl.da.ContactTables;
        Repeater1.DataBind();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        var q = (from a in dl.da.ContactTables
                 where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                 select a).FirstOrDefault();
        dl.da.ContactTables.DeleteOnSubmit(q);
        dl.da.SubmitChanges();
        bind();
    }
}
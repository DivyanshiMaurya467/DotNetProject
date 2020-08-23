using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RateReview : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();

    protected void Page_Load(object sender, EventArgs e)
    {
        var q = from a in dl.da.ProductTables
                select new
                {
                    a.ProductName
                };
        DropDownList1.DataTextField = "ProductName";
        DropDownList1.DataValueField = "ProductName";
        DropDownList1.DataSource = q;
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0,"---Select Product---");
    }

    protected void button1_Click(object sender, EventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    Class1 dl = new Class1();
    protected void Page_Load(object sender, EventArgs e)

    {
        Repeater2.DataSource = dl.da.CategoryTables;
        Repeater2.DataBind();
        Repeater3.DataSource = dl.da.CategoryTables;
        Repeater3.DataBind();
        if (Session["uid"] != null)
        {
            Literal1.Text = Session["Un"].ToString();
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }

        var p = from a in dl.da.CategoryTables
                from b in dl.da.AddProductTables.Where(k => k.Pro_Category == a.Id.ToString())
                select new
                {
                    a.CName,
                    b.Pro_Name,
                    b.Pro_Pic,
                    b.Price,
                    b.Id
                };
        Repeater1.DataSource = p;
        Repeater1.DataBind();

        var q = from a in dl.da.CategoryTables.Where(k => k.Id == Convert.ToInt32(Request.QueryString["Cid"]))
                from b in dl.da.AddProductTables.Where(k => k.Pro_Category == a.Id.ToString())
                select new
                {
                    a.CName,
                    b.Pro_Name,
                    b.Pro_Pic,
                    b.Price,
                    b.Id
                };
        Repeater1.DataSource = q;
        Repeater1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["Uid"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        CartTable ct = new CartTable();
        ct.Uid = Convert.ToInt32(Session["Uid"]);
        ct.Pid= Convert.ToInt32(((Button)sender).CommandArgument);
        var q = (from a in dl.da.AddProductTables
                 where a.Id == Convert.ToInt32(((Button)sender).CommandArgument)
                 select a).FirstOrDefault();
        ct.Status = "u";
        ct.TotalAmount = Convert.ToInt32(q.Price);
        ct.Status = "u";
        dl.da.CartTables.InsertOnSubmit(ct);
        dl.da.SubmitChanges();
        Response.Redirect("~/Cart.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    { }
    protected void LinkButton2_Click(object sender, EventArgs e)
    { }


}
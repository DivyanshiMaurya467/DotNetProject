using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
   Class1 ll = new Class1();
    int tsum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = ll.da.CategoryTables;
        Repeater1.DataBind();

        if (Session["uid"] != null)
        {
            Literal1.Text = Session["Un"].ToString();
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
        var q = from a in ll.da.AddProductTables
                from b in ll.da.CartTables.Where(oo => oo.Uid == Convert.ToInt32(Session["uid"]) && oo.Status == "u" && oo.Pid == Convert.ToInt32(a.Id))
                select new
                {
                    a.Pro_Name,
                    a.Pro_Pic,
                    a.Price,
                    b.Pid,
                    b.TotalAmount,
                  
                    b.Id,
                    

                };
        GridView1.DataSource = q;
        GridView1.DataBind();
        if (q.Any())
        {

            var qq = from bb in ll.da.CartTables.Where(oo => oo.Uid == Convert.ToInt32(Session["uid"]) && oo.Status == "u")
                     select bb;
            foreach (CartTable k in qq)
            {
                tsum = Convert.ToInt32(tsum +(k.TotalAmount));

                Literal5.Text = Convert.ToString(tsum);

            }

        }
        Literal5.Text = Convert.ToString(tsum);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProductPage.aspx?cat=" + ((LinkButton)sender).CommandArgument);
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        string x = Session["uid"].ToString();
        int lbt = Convert.ToInt32(((LinkButton)sender).CommandArgument);
        var q = (from a in ll.da.CartTables
                 where a.Id == lbt
                 select a).FirstOrDefault();
        if (q != null)
        {

            ll.da.CartTables.DeleteOnSubmit(q);
            ll.da.SubmitChanges();

        }
        Session["uid"] = x;
        Response.Redirect("~/Cart.aspx");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        var qq = from a in ll.da.CartTables
                 where a.Uid == Convert.ToInt32(Session["uid"])
                 select a;
        foreach (CartTable k in qq)
        {
            CartTable ot = new CartTable();
            ot.Uid = k.Uid;
            ot.Pid = k.Pid;
            ot.Status = "u";
            ot.Qty = k.Qty;
            ll.da.CartTables.InsertOnSubmit(ot);
        }
        ll.da.SubmitChanges();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("Checkout.aspx?pp=" + Literal5.Text);
    }

   
}
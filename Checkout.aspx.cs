using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Checkout : System.Web.UI.Page
{
    Class1 dl = new Class1();
    int tsum = 0;
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
        var q = (from a in dl.da.ProfileTables.Where(k => k.Id == Convert.ToInt32(Session["uid"]))
                 from b in dl.da.CartTables
                    
                 select new
                 {
                     a.Name,
                     a.MobNo,
                     a.Email,
                     b.TotalAmount,
                    

                 }).FirstOrDefault();
        TextBox1.Text = q.Name;
        TextBox2.Text = q.MobNo;
        TextBox3.Text = q.Email;
        if (q!=null)
        {

            var qq = from bb in dl.da.CartTables.Where(oo => oo.Uid == Convert.ToInt32(Session["uid"]) && oo.Status == "u")
                     select bb;
            foreach (CartTable k in qq)
            {
                tsum = Convert.ToInt32(tsum + (k.TotalAmount));

                TextBox5.Text = Convert.ToString(tsum);

            }
            TextBox5.Text = Convert.ToString(tsum);

        }
    }

    protected void Button2_Click(object sender, EventArgs e)    
    {
        BillingTable bt = new BillingTable();

        bt.Uid = Convert.ToInt32(Session["uid"].ToString());
        bt.DAddress = TextBox4.Text;
       
        bt.TotalPrice =Convert.ToInt32(TextBox5.Text);
        dl.da.BillingTables.InsertOnSubmit(bt);
        dl.da.SubmitChanges();
        Response.Write("<script>alert('Your order is in process.!!!!')</script>");
        Response.Redirect("Billing.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class check : System.Web.UI.Page
{
Class1 dl = new Class1();
    int tsum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            Literal1.Text = Session["Un"].ToString();
            Literal2.Text = Convert.ToString(DateTime.Now);

        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
        var q = from a in dl.da.AddProductTables
                from b in dl.da.CartTables.Where(oo => oo.Uid == Convert.ToInt32(Session["uid"]) && oo.Status == "u" && oo.Pid == Convert.ToInt32(a.Id))
                select new
                {
                    a.Pro_Name,

                    a.Price,
                    b.Pid,
                    b.TotalAmount,

                    b.Id,


                };
        GridView1.DataSource = q;
        GridView1.DataBind();
        if (q.Any())
        {

            var qq = from bb in dl.da.CartTables.Where(oo => oo.Uid == Convert.ToInt32(Session["uid"]) && oo.Status == "u")
                     select bb;
            foreach (CartTable k in qq)
            {
                tsum = Convert.ToInt32(tsum + (k.TotalAmount));

                Literal5.Text = Convert.ToString(tsum);

            }

        }
        Literal3.Text = Session["uid"].ToString();
        Literal5.Text = Convert.ToString(tsum);

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            var q = (from a in dl.da.CartTables
                     where a.Uid == Convert.ToInt32(Session["Id"])
                     select a).FirstOrDefault();
            if (q != null)
            {
                dl.da.CartTables.DeleteOnSubmit(q);
                dl.da.SubmitChanges();
            }
            Response.Redirect("logout.aspx");
        }
        catch
        {
            Response.Redirect("logout.aspx");
        }
    }
}

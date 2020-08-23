using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_ViewBooking : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bind();
        }

    }

    void bind()
    {
        var u = from a in c1.da.ProfileTables
                from b in c1.da.AddProductTables
                from c in c1.da.CartTables.Where(AA => AA.Uid == Convert.ToInt32(a.Id) & AA.Pid == Convert.ToInt32(b.Id) && AA.Status == "u")
                select new
                {
                    a.Name,
                    a.Email,
                    b.Pro_Name,
                    b.Price,
                    c.Uid,
                    c.TotalAmount,
                    c.Status,
                    c.Qty,
                    c.Id
                };

        Repeater1.DataSource = u;
        Repeater1.DataBind();
    }
    protected void linkbutton3_Click(object sender, EventArgs e)
    {
        var q = (from a in c1.da.ProfileTables
                 where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                 select a).FirstOrDefault();
        string destinationaddr = "91" + q.MobNo;
        string message = "Hi " + q.Name + " , Your Order Have Been Confirmed Successfully Thanks!!";

        String message1 = HttpUtility.UrlEncode(message);
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "8GwB0UYwCBE-kWa9pPEQW8b4r64y4opUmAxL2IiDK3"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);

        }
        Response.Write("<script>alert('Confirmation message is sent')</script>");
        var qq = (from a in c1.da.CartTables
                  where a.Id == Convert.ToInt32(((LinkButton)sender).CommandName)
                  select a).FirstOrDefault();
        qq.Status = "r";
        c1.da.SubmitChanges();
        bind();
    }
    protected void linkbutton1_Click(object sender, EventArgs e)
    {
        var q1 = (from b in c1.da.ProfileTables
                  where b.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                  select b).FirstOrDefault();
        c1.da.CartTables.FirstOrDefault();
        c1.da.SubmitChanges();
        string destinationaddr = "91" + q1.MobNo;
        string message = "Hi " + q1.Name + " ,Sorry, Your Order Have Been Rejected !!";

        String message1 = HttpUtility.UrlEncode(message);
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "8GwB0UYwCBE-kWa9pPEQW8b4r64y4opUmAxL2IiDK3"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);

        }
        Response.Write("<script>alert('Rejection message is sent')</script>");

        var q = (from c in c1.da.CartTables
                 where c.Id == Convert.ToInt32(((LinkButton)sender).CommandName)
                 select c).FirstOrDefault();
        c1.da.CartTables.DeleteOnSubmit(q);

        c1.da.SubmitChanges();
        bind();
    }
}
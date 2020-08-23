using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    Class1 dl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void button1_Click(object sender, EventArgs e)
    {
        var q = (from a in dl.da.ProfileTables
                 where a.Email==TextBox1.Text & a.Password==TextBox2.Text
                 select a).FirstOrDefault();
        if (q!=null)
        {
            Session["Email"] = q.Email;
            Session["uid"] = q.Id;
            Session["Un"] = q.Name;
            Response.Write("<script>alert('Welcome To Virtual Brush!!')</script>");

            Response.Redirect("~/UserDefault.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Email or Password!!')</script>");
        }

   }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    Class1 c = new Class1();

    protected void Page_Load(object sender, EventArgs e)

    {
        Repeater1.DataSource = c.da.CategoryTables;
        Repeater1.DataBind();
        if (Session["uid"] != null)
        {
            Literal1.Text = Session["Un"].ToString();
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }

    protected void button1_Click(object sender, EventArgs e)
    {
        var q = (from a in c.da.ProfileTables
                 where a.Email == Session["Email"].ToString()
                 select a).FirstOrDefault();
        if (q != null)
        {
            if(TextBox1.Text==TextBox2.Text)
            {
                q.Password = TextBox1.Text;
                q.CPassword = TextBox2.Text;
                c.da.SubmitChanges();
                Response.Write("<script> alert(' Password updated successfully!!!!') </script>");
            }
            else
            {
                Response.Write("<script> alert('Password doesn't match!!!!') </script>");
            }

        }
        else
        {
            Response.Write("<script> alert('Invalid Password!!!!') </script>");
        }
    }


}
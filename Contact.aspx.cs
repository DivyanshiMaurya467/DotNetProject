using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    Class1 dl = new Class1();
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
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ContactTable ct = new ContactTable();
        ct.Name = TextBox1.Text;
        ct.Email = TextBox2.Text;
        ct.Subject = TextBox3.Text;
        ct.Message = TextBox4.Text;
        dl.da.ContactTables.InsertOnSubmit(ct);
        dl.da.SubmitChanges();
        Response.Write("<script>alert('Thanks For Feedback!!')</script>");
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
    }
}
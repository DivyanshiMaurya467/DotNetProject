using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button1_Click(object sender, EventArgs e)
    {
        ProfileTable pf = new ProfileTable();
        pf.Name = TextBox1.Text;
        pf.MobNo = TextBox2.Text;
        pf.Email = TextBox3.Text;
        pf.Password = TextBox4.Text;
        pf.CPassword = TextBox5.Text;
        c.da.ProfileTables.InsertOnSubmit(pf);
        c.da.SubmitChanges();
        Response.Write("<script>alert('Thanks For SignUp!!')</script>");

    }
}


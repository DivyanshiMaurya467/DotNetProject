using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DashBoard_ChangePd : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

var q=(from a in c.da.AdminTables
       where a.AdminEmail==Session["email"].ToString() select a).FirstOrDefault();
        if(q!=null)
        {
            q.Password = TextBox1.Text;
            c.da.SubmitChanges();
            Response.Write("<script> alert(' Password updated successfully!!!!') </script>");
        }
        else
        {
            Response.Write("<script> alert('Invalid Password!!!!') </script>");
        }
    }
}
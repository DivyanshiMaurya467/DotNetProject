using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;



public partial class DashBoard_AdminLogin : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        var q = (from a in c.da.AdminTables
                 where a.AdminEmail == TextBox1.Text & a.Password == TextBox2.Text
                 select a).FirstOrDefault();
        if (q != null)
        {
            Session["email"] = q.AdminEmail;
            Response.Write("<script>alert('Welcome to Admin Dashboard!!!!')</script>");
            Response.Redirect("~/DashBoard/AdmnHome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Email or Password!!!!')</script>");
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        var data = (from k in c.da.AdminTables
                    where k.AdminEmail == Convert.ToString(TextBox3.Text)
                    select k).FirstOrDefault();
        if (data != null)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("virtualbrush456@gmail.com");
            msg.To.Add(Convert.ToString(data.AdminEmail));
            msg.Subject = "Your Registered Password is sent.";
            msg.Body = "Your Registered Password is : " + Convert.ToString(data.Password);
            msg.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            NetworkCredential networkcred = new NetworkCredential();
            networkcred.UserName = "virtualbrush456@gmail.com";
            networkcred.Password = "vb456pro";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = networkcred;
            smtp.EnableSsl = true;
            smtp.Send(msg);
            Response.Write("<script>alert('Password sent successfully..!')</script>");
        }
        else
        {
            Response.Write("<script>alert('Email does not exit..!!!!')</script>");

        }
    }
}
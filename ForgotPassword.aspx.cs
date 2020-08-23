using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class ForgotPassword : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var data = (from k in c.da.ProfileTables
                    where k.Email == Convert.ToString(TextBox1.Text)
                    select k).FirstOrDefault();
        if (data != null)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("virtualbrush456@gmail.com");
            msg.To.Add(Convert.ToString(data.Email));
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
            Response.Write("<script>alert('Email does not exit..!')</script>");

        }
    }
}
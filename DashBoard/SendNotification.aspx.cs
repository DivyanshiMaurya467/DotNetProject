using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Dashboard_SendNotification : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MailMessage mm = new MailMessage();
        mm.To.Add(TextBox1.Text);
        mm.From = new MailAddress("virtualbrush456@gmail.com");
        mm.Subject = TextBox2.Text;
        mm.Body = TextBox3.Text;
        mm.IsBodyHtml = true;

        SmtpClient sc = new SmtpClient();
        sc.Host = "smtp.gmail.com";
        sc.Port = 587;

        NetworkCredential nc = new NetworkCredential();
        nc.UserName = "virtualbrush456@gmail.com";
        nc.Password = "vb456pro";
        sc.UseDefaultCredentials = true;
        sc.Credentials = nc;
        sc.EnableSsl = true;
        sc.Send(mm);
        Response.Write("<script>alert('Notification Sended Successfully..!')</script>");
        TextBox1.Text = TextBox2.Text = TextBox3.Text = "";

    }
}

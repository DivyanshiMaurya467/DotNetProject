using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DashBoard_ManagePro : System.Web.UI.Page
   
   
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;

            Bind();
        }
    }
    void Bind()
    {
        Repeater1.DataSource = c.da.AddProductTables;

        Repeater1.DataBind();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ViewState["a"] = ((LinkButton)sender).CommandArgument;
        MultiView1.ActiveViewIndex = 1;
        var q = (from a in c.da.AddProductTables
                 from b in c.da.CategoryTables
                 where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                 select new
                 {
                     a.Pro_Name,
                     a.Price,
                     a.Co_Name,
                     b.CName
                 }).FirstOrDefault();
        TextBox1.Text = q.Pro_Name;
        TextBox3.Text = q.CName;
        TextBox2.Text = q.Co_Name;
        TextBox4.Text = q.Price.ToString();


    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 0;
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        var q = (from a in c.da.AddProductTables
                 where a.Id == Convert.ToInt32(ViewState["a"])
                 select a).FirstOrDefault();
        q.Pro_Name = TextBox1.Text;
        q.Co_Name = TextBox2.Text;
        q.Pro_Category= TextBox3.Text;
        q.Price =Convert.ToInt32(TextBox4.Text);
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Dashboard/ProPic/" + FileUpload1.FileName));
            q.Pro_Pic = "/Dashboard/ProPic/" + FileUpload1.FileName;
        }
        c.da.SubmitChanges();
        Bind();
        MultiView1.ActiveViewIndex = 0;
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        var q = (from a in c.da.AddProductTables
                 from b in c.da.CategoryTables
                 where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                 select new { a.Pro_Name,
                 a.Pro_Pic,
                 a.Price,
                 a.Co_Name,
                     b.CName
                 }).FirstOrDefault();
        Literal1.Text = q.Pro_Name;
        Literal2.Text = q.Co_Name;
        Literal3.Text = q.CName;
        Literal4.Text = q.Price.ToString();
        Image1.ImageUrl = q.Pro_Pic;
    }

    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        var q = (from a in c.da.AddProductTables
                 where a.Id == Convert.ToInt32(ViewState["b"])
                 select a).FirstOrDefault();
        c.da.AddProductTables.DeleteOnSubmit(q);
        c.da.SubmitChanges();
        Bind();
        MultiView1.ActiveViewIndex = 0;
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        ViewState["b"] = ((LinkButton)sender).CommandArgument;
        MultiView1.ActiveViewIndex = 3;
        var q = (from a in c.da.AddProductTables
                 where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                 select a).FirstOrDefault();
        Literal5.Text = q.Pro_Name;
        Image2.ImageUrl = q.Pro_Pic;
    }

   
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DashBoard_AddCategory : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    void bind()
    {
        Repeater1.DataSource = c.da.CategoryTables;
        Repeater1.DataBind();
    }

    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        var q = (from a in c.da.CategoryTables
                 where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                 select a).FirstOrDefault();
        c.da.CategoryTables.DeleteOnSubmit(q);
        c.da.SubmitChanges();
        bind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        CategoryTable ct = new CategoryTable();
        ct.CName = TextBox1.Text;
       
        c.da.CategoryTables.InsertOnSubmit(ct);
        c.da.SubmitChanges();
        Response.Write("<script>alert('Category added Successfull...!')</script>");
        TextBox1.Text = "";
        bind();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
    }

    }
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_AddProduct : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = c.da.CategoryTables;
            DropDownList1.DataTextField = "CName";
            DropDownList1.DataValueField = "Id";
            DropDownList1.Items.Insert(0, "--Select Category--");
            DropDownList1.DataBind();


        }
    }




    

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        AddProductTable Pt = new AddProductTable();
        Pt.Pro_Name = TextBox1.Text;
        Pt.Pro_Category = DropDownList1.SelectedValue.ToString();
        Pt.Co_Name = TextBox2.Text;
      
        Pt.Price = Convert.ToInt32(TextBox4.Text);


        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/DashBoard/ProPic/" + FileUpload1.FileName));

        }
        Pt.Pro_Pic = "/DashBoard/ProPic/" + FileUpload1.FileName;
        c.da.AddProductTables.InsertOnSubmit(Pt);
        c.da.SubmitChanges();
        Response.Write("<script>alert('Product added successfullly..!!!')</script>");
        TextBox1.Text = TextBox2.Text = TextBox4.Text = " ";
        DropDownList1.SelectedIndex = 0;

    }
}
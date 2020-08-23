using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BudgetCalculator : System.Web.UI.Page
{
    Class1 dl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = dl.da.CategoryTables;
        Repeater1.DataBind();
        if (Session["uid"] != null)
        {
            Literal5.Text = Session["Un"].ToString();
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {
            DropDownList1.DataSource = dl.da.AddProductTables;
            DropDownList1.DataTextField = "Pro_Name";
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataBind();
        }

    }       

    protected void Button1_Click(object sender, EventArgs e)
    {

        string sp = RadioButtonList1.SelectedValue;
        string pt = RadioButtonList2.SelectedValue;
        int rm = Convert.ToInt32(TextBox1.Text);
        int area = Convert.ToInt32(TextBox2.Text);
        string fh = RadioButtonList3.SelectedValue;
        string pd = DropDownList1.SelectedItem.ToString();
        var q = (from a in dl.da.BudgetMasterTables
                 where a.PaintProduct == pd
                 select a).FirstOrDefault();
        int prr = Convert.ToInt32(area * q.Price);
        int final = rm * prr;
        Literal1.Text = rm.ToString();
        Literal2.Text = area.ToString();
        Literal3.Text = pd.ToString();
        Literal4.Text = final.ToString();


    }
}
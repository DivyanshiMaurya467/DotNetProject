using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DashBoard_BookingList : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
       

    }
    void bind()
    {
        var u = from a in c1.da.ProfileTables
                from b in c1.da.AddProductTables
                from c in c1.da.CartTables.Where(oo => oo.Uid == a.Id & oo.Pid ==b.Id)
                select new
                {
                    a.Name,
                    a.Email,
                    b.Pro_Name,
                    b.Price,
                    c.Uid,
                    c.TotalAmount,
                    c.Status,
                    c.Qty
                };

        Repeater1.DataSource = u;
        Repeater1.DataBind();
    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DashBoard_ViewUsers : System.Web.UI.Page
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
                    select new
                    {
                        a.Name,
                        a.Email,
                        a.MobNo
                    };
            Repeater1.DataSource = c1.da.ProfileTables;
            Repeater1.DataBind();
        }
    
        }
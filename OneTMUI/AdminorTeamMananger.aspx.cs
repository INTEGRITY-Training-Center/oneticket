using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OneTMUI
{
    public partial class AdminorTeamMananger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlList.Items.Insert(0, new ListItem("Last Update"));
            }

        }
    }
}
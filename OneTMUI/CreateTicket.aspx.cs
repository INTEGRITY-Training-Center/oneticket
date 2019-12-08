using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OneTMUI
{
    public partial class CreateTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                btnCreate.Attributes.Add("style", "display:block;");
                btnCancel.Attributes.Add("style", "display:block;");
                btnUpdate.Attributes.Add("style", "display:none;");
                btnClosed.Attributes.Add("style", "display:none;");
                btnCancelUpdate.Attributes.Add("style", "display:none;");
            }
        }

        

        protected void btnGenerateTicket_Click1(object sender, EventArgs e)
        {
            DateTime date = DateTime.UtcNow;
            int genticketnum = date.GetHashCode();
            txtTicketNo.Text = genticketnum.ToString();
        }

        protected void btnSearchTicket_Click(object sender, EventArgs e)
        {
           

            btnCreate.Attributes.Add("style", "display:none;");
            btnCancel.Attributes.Add("style", "display:none;");
            btnUpdate.Attributes.Add("style", "display:block;");
            btnClosed.Attributes.Add("style", "display:block;");
            btnCancelUpdate.Attributes.Add("style", "display:block;");
        }
    }
}
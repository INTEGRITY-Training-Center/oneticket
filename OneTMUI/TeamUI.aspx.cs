using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OneTM_Info;
using OneTM_Controller;

namespace OneTMUI
{
    public partial class TeamUI : System.Web.UI.Page
    {
        TeamInfo Tinfo = new TeamInfo();
        TeamController Tcon = new TeamController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTeamSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Tinfo.TeamDescription = txtTeamDescription.Text.Trim();
                Tinfo.CreatedDate = DateTime.UtcNow.AddMinutes(390);
                Tinfo.UpdatedDate = DateTime.UtcNow.AddMinutes(390);
                Tcon.Insert(Tinfo);
            }
            string message = "Save successfully";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }

    
    }
}
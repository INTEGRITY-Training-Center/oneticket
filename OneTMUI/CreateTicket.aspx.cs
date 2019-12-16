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
    public partial class CreateTicket : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!IsPostBack)
            {
                btnCreate.Attributes.Add("style", "display:block;");
                btnCancel.Attributes.Add("style", "display:block;");
                btnUpdate.Attributes.Add("style", "display:none;");
                btnClosed.Attributes.Add("style", "display:none;");
                btnCancelUpdate.Attributes.Add("style", "display:none;");


                teambind();
                severitybind();
            }
            
        }

        
        public void teambind()
        {
            List<TeamInfo> lst = new List<TeamInfo>();//list constructor
            TeamController dao = new TeamController();//to extract data dao constructor
            lst = dao.selectallteam();//get list
            ddlAssignTeam.DataSource = lst;
            ddlAssignTeam.DataValueField = "TeamID";
            ddlAssignTeam.DataTextField = "TeamDescription";//CityName == database name
            ddlAssignTeam.DataBind();
            ddlAssignTeam.Items.Insert(0, new ListItem("Select Team"));
        }

        public void memberbindById(string ID)
        {
            List<Member_Info> lst = new List<Member_Info>();//list constructor
            MemberController dao = new MemberController();//to extract data dao constructor
            lst = dao.selectallmember();//get list
            ddlTeamMember.DataSource = lst;
            ddlTeamMember.DataValueField = "MemberID";
            ddlTeamMember.DataTextField = "MemberNumber";//CityName == database name
            ddlTeamMember.DataBind();
            ddlTeamMember.Items.Insert(0, new ListItem("Select Member"));
        }

        public void severitybind()
        {
            List<SeverityInfo> lst = new List<SeverityInfo>();//list constructor
            SeverityController dao = new SeverityController();//to extract data dao constructor
            lst = dao.selectallseverity();//get list
            ddlSecurityLevel.DataSource = lst;
            ddlSecurityLevel.DataValueField = "SeverityID";
            ddlSecurityLevel.DataTextField = "SeverityLevel";//CityName == database name
            ddlSecurityLevel.DataBind();
            ddlSecurityLevel.Items.Insert(0, new ListItem("Select Severity"));
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

        protected void ddlAssignTeam_SelectedIndexChanged(object sender, EventArgs e)
        {
            memberbindById(ddlAssignTeam.SelectedItem .Value);
        }

      

       
    }
}
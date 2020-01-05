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
        Ticketinfo Tinfo = new Ticketinfo();
        TicketController Tcon = new TicketController();
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!IsPostBack)
            {
                //if (Request.RawUrl.ToLower().Contains(".aspx"))
                //{
                //    Response.RedirectPermanent("CreateTicket", true);
                //    return;
                //}
                btnCreate.Attributes.Add("style", "display:block;");
                btnCancel.Attributes.Add("style", "display:block;");
                btnUpdate.Attributes.Add("style", "display:none;");
                btnClosed.Attributes.Add("style", "display:none;");
                btnCancelUpdate.Attributes.Add("style", "display:none;");

                teambind();
                severitybind();
            }
            
        }

        public static string GenerateNewRandom()
        {
            Random generator = new Random();
            String r = generator.Next(0, 1000000).ToString("D6");
            if (r.Distinct().Count() == 1)
            {
                r = GenerateNewRandom();
            }
            return r;
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
            lst = dao.selectallmemberbyteamID(ID);//get list
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
            ddlSecurityLevel.DataTextField = "SeverityLevel";
            ddlSecurityLevel.DataBind();
            ddlSecurityLevel.Items.Insert(0, new ListItem("Select Severity"));

        }

        protected void btnGenerateTicket_Click1(object sender, EventArgs e)
        {
            txtTicketNo.Text = GenerateNewRandom();
            txtCreatedDate.Value = DateTime.UtcNow.AddMinutes(390).ToShortDateString();
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
            memberbindById(ddlAssignTeam.SelectedItem.Value);
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Tinfo.Description = lblIssue.Text.Trim();
                Tinfo.CreatedDate = DateTime.UtcNow.AddMinutes(390);
                
                Tinfo.UpdatedDate = DateTime.UtcNow.AddMinutes(390);
                Tinfo.TeamID = ddlAssignTeam.SelectedItem.Value;
                Tinfo.Status = "true";
                Tinfo.Expireddate = Convert.ToDateTime(txtExpiredDate.Text.Trim());
                Tinfo.Ticket_Severity = Convert.ToInt32(ddlSecurityLevel.SelectedItem.Value);
                //TimeSpan t = Tinfo.CreatedDate - Tinfo.Expireddate;
                //Tinfo.Ticket_Estimated_Time = Convert.ToInt32(t.TotalDays);
                Tinfo.Ticket_Estimated_Time = Convert.ToInt32((Tinfo.Expireddate-Tinfo.CreatedDate).TotalDays);

                Tcon.TicketInsert(Tinfo);
            }
            string message = "Save successfully";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }

      

       
    }
}
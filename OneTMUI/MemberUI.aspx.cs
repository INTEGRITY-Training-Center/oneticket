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
    public partial class MemberUI : System.Web.UI.Page
    {
        Member_Info Minfo = new Member_Info();
        MemberController Mcon=new MemberController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                teambind();
            }
           
        }

        public void teambind()
        {
            List<TeamInfo> lst = new List<TeamInfo>();//list constructor
            TeamController dao = new TeamController();//to extract data dao constructor
            lst = dao.selectallteam();//get list
            ddlselectteam.DataSource = lst;
            ddlselectteam.DataValueField = "TeamID";
            ddlselectteam.DataTextField = "TeamDescription";//CityName == database name
            ddlselectteam.DataBind();
            ddlselectteam.Items.Insert(0, new ListItem("Select Team"));
        }

        protected void Btncreate_Click(object sender, EventArgs e)
        {
            Member_Info minfo = new Member_Info();
            MemberController dao = new MemberController();
            minfo.MemberNumber = txtmembername.Text.Trim();
            minfo.TeamID = ddlselectteam.SelectedItem.Value;
            dao.Insert(minfo);
        }
    }

     
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OneTM_Controller;
using OneTM_Info;

namespace OneTMUI.Admin
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                gvuser.Visible = false;
                gvteam.Visible = false;
                gvmember.Visible = false;
            }
        }

        protected void userbtn_Click(object sender, EventArgs e)
        {
           
            List<UserInfo> lstuser = new List<UserInfo>();
            UserController ucon = new UserController();
            lstuser = ucon.selectalluser();
            gvuser.DataSource = lstuser;
            gvuser.DataBind();
            gvmember.Visible = false;
            gvteam.Visible = false;
            gvuser.Visible = true;
        }

        protected void teambtn_Click(object sender, EventArgs e)
        {
            List<TeamInfo> lstteam = new List<TeamInfo>();
            TeamController tcon = new TeamController();
            lstteam = tcon.selectallteam();
            gvteam.DataSource = lstteam;
            gvteam.DataBind();
            gvuser.Visible = false;
            gvmember.Visible = false;
            gvteam.Visible = true;
        }

        protected void adminbtn_Click(object sender, EventArgs e)
        {
            List<Member_Info> lstmember = new List<Member_Info>();
            MemberController mcon= new MemberController();
            lstmember = mcon.selectallmember();
            gvmember.DataSource = lstmember;
            gvmember.DataBind();
            gvuser.Visible = false;
            gvteam.Visible = false;
            gvmember.Visible = true;
        }
    }
}
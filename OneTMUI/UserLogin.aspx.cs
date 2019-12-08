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
    public partial class UserLogin : System.Web.UI.Page
    {
        UserInfo Uinfo = new UserInfo();
        UserController Ucon = new UserController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Uinfo.UserName = txtUserName.Text.Trim();
                Uinfo.Password = txtPassword.Text.Trim();
                Uinfo.UserType = 1;
                Uinfo.CreatedDate = DateTime.UtcNow.AddMinutes(390);
                Uinfo.UpdatedDate = DateTime.UtcNow.AddMinutes(390);
                Ucon.Insert(Uinfo);
            }
            string message = "Sign Up successfully";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
   
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtRetypePassword.Text = "";
            //txtEmail.Text = "";
        }
    }
}
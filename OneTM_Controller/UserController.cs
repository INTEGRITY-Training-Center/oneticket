using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_Info;
using OneTM_DAO;

namespace OneTM_Controller
{
    public class UserController
    {
        UserInfo Uinfo;
        UserDAO Udao;
        public void Insert(UserInfo uinfo)
        {
            Udao = new UserDAO();
            Udao.InserttoUsertbl(uinfo);
        }

    }
}

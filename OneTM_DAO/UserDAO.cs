using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_Info;
using OneTM_DAO.DBML;

namespace OneTM_DAO
{
    public class UserDAO
    {
        public List<UserInfo> SelectAllUserInfo()
        {
            List<UserInfo> lstUserInfo = new List<UserInfo>();
            UserInfo userinfo;
            using (OTMDataContext db = new OTMDataContext())
            {
                var data = (from a in db.Users select a).ToList();
                foreach (var obj in data)
                {
                    userinfo = new UserInfo();
                    userinfo.UserID = obj.UserID;
                    userinfo.UserName = obj.UserName;
                    userinfo.UserType = obj.UserType;
                    userinfo.CreatedDate = obj.CreatedDate;
                    userinfo.UpdatedDate = obj.UpdatedDate;
                    lstUserInfo.Add(userinfo);
                }
            }
            return lstUserInfo;
           
        }
    }
}

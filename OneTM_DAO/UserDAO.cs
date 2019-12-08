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

        public void InserttoUsertbl(UserInfo Uinfo)
        {
            using (OTMDataContext db = new OTMDataContext())
            {
                User Usertbl = new User();
                Guid ID = Guid.NewGuid();
                Usertbl.UserID = ID.ToString();
               
                Usertbl.UserName = Uinfo.UserName;
                Usertbl.Password = Uinfo.Password;
                Usertbl.UserType = 1;
                Usertbl.CreatedDate = DateTime.UtcNow.AddMinutes(390);
                Usertbl.UpdatedDate = DateTime.UtcNow.AddMinutes(390);
                db.Users.InsertOnSubmit(Usertbl);
                db.SubmitChanges();
            }
        }
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_Info;
using OneTM_DAO.DBML;

namespace OneTM_DAO
{
   public class Member_DAO
    {
       public List<Member_Info> SelectAllMember_Info()
       {
           List<Member_Info> Mlist = new List<Member_Info>();
           Member_Info Minfo;
           using (OTMDataContext db=new OTMDataContext())
           {
               var data = (from a in db.Members select a).ToList();
               foreach (var obj in data)
               {
                   Minfo = new Member_Info();
                   Minfo.MemberID = obj.MemberID;
                   Minfo.TeamID = obj.TeamID;
                   Minfo.MemberNumber = obj.MemberNumber;
                   Minfo.CreatedDate = obj.CreatedDate;
                   Minfo.UpdatedDate = obj.UpdatedDate;

                   Mlist.Add(Minfo);

               }
           }

           return Mlist;
       }
    } 
}

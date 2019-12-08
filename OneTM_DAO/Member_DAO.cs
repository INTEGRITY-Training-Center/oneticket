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
        public void MemberInsert(Member_Info minfo)
        {
            Member m;
            using (OTMDataContext db = new OTMDataContext())
            {
                m = new Member();
                Guid ID = Guid.NewGuid();
                m.MemberID = ID.ToString();
                m.TeamID = ID.ToString();
                m.MemberNumber = minfo.MemberNumber;
                m.CreatedDate = minfo.CreatedDate;
                m.UpdatedDate = minfo.UpdatedDate;
                db.Members.InsertOnSubmit(m);
                db.SubmitChanges();
            }
        }

        public void DeleteByMemberID(string MemberID)
        {

            using (OTMDataContext db = new OTMDataContext())
            {
                var data = (from a in db.Members where a.MemberID == MemberID select a).FirstOrDefault();
                db.Members.DeleteOnSubmit(data);
                db.SubmitChanges();
            }
        }
        public List<Member_Info> SelectAllMember_Info()
        {
            List<Member_Info> Mlist = new List<Member_Info>();
            Member_Info Minfo;
            using (OTMDataContext db = new OTMDataContext())
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

using OneTM_Info;//important
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_DAO.DBML;

namespace OneTM_DAO
{
   public  class TeamDAO
    {
       public List<TeamInfo> SelectAllTeamInfo()
       {
           List<TeamInfo> tlist=new List<TeamInfo> ();
           TeamInfo tinfo;

           using (OTMDataContext db=new OTMDataContext())
          {
              var source = (from a in db.Teams select a).ToList();
               foreach(var obj in source )
               {
                   tinfo =new TeamInfo ();
                   tinfo.TeamID = obj.TeamID;
                   tinfo.TeamDescription = obj.TeamDescription;
                   tinfo.CreatedDate = obj.CreatedDate;
                   tinfo.UpdatedDate = obj.UpdatedDate;
                   tlist.Add(tinfo);

               }
          }
           return tlist;
       }
       public void DeleteByTeamID(string TeamID)
       {
           using (OTMDataContext db = new OTMDataContext())
           {
               var data = (from a in db.Teams where a.TeamID == TeamID select a).FirstOrDefault();
               db.Teams.DeleteOnSubmit(data);
               db.SubmitChanges();
           }
       }
       public string selectByTeamID(string TeamID)
       {
           using (OTMDataContext db = new OTMDataContext())
           {
               var ID = (from a in db.Teams where a.TeamID == TeamID select a).FirstOrDefault();
               return ID.TeamID;

           }
       }
       public void InsertytoTeam(TeamInfo Tinfo)
       {
           using (OTMDataContext db = new OTMDataContext())
           {
               Team Teamtbl = new Team();
               Guid ID = Guid.NewGuid();
               Teamtbl.TeamID = ID.ToString();
               Teamtbl.TeamDescription = Tinfo.TeamDescription;
               Teamtbl.CreatedDate = DateTime.UtcNow.AddMinutes(390);
               Teamtbl.UpdatedDate = DateTime.UtcNow.AddMinutes(390);

               db.Teams.InsertOnSubmit(Teamtbl);
               db.SubmitChanges();

           }
       }

       public bool UpdateByTeamID(string ID, TeamInfo Tinfo)
       {
           using (OTMDataContext db = new OTMDataContext())
           {
               var source = (from a in db.Teams where a.TeamID == ID select a).FirstOrDefault();
               source.TeamDescription = Tinfo.TeamDescription;
               source.CreatedDate = DateTime.UtcNow.AddMinutes(390);
               source.UpdatedDate = DateTime.UtcNow.AddMinutes(390);
               db.SubmitChanges();

               return true;
           }
       }
       
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_DAO.DBML;
using OneTM_Info;


namespace OneTM_DAO
{
    class SeverityDAO
    {
        public List<SeverityInfo> SelectAllSeverityInfo()
        {
            List<SeverityInfo> slist = new List<SeverityInfo>();
            SeverityInfo sinfo;

            using (OTMDataContext db = new OTMDataContext())
            {
                var source = (from a in db.Severities select a).ToList();
                foreach (var obj in source)
                {
                    sinfo = new SeverityInfo();
                    sinfo.SeverityID = obj.SeverityID;
                    sinfo.SeverityLevel = obj.SeverityLevel;
                    

                }
            }
            return slist;
        }

        public SeverityInfo selectBySeverityID(int SeverityID)
        {
            using (OTMDataContext db = new OTMDataContext())
            {
                var ID = (from a in db.Severities where a.SeverityID == SeverityID select a).FirstOrDefault();
                SeverityInfo sinfo = new SeverityInfo();
                sinfo.SeverityID = ID.SeverityID;
                sinfo.SeverityLevel = ID.SeverityLevel;
                return sinfo;
            }
        }
    }
}

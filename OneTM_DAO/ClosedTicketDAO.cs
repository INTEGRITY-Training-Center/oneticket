using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_DAO.DBML;
using OneTM_Info;

namespace OneTM_DAO
{
  public  class ClosedTicketDAO
    {
        public void ClosedTicketInsert(ClosedTicketInfo cinfo)
        {
            ClosedTicket closed;
            using (OTMDataContext db = new OTMDataContext())
            {
                closed = new ClosedTicket();
                Guid ID = Guid.NewGuid();
                closed.ClosedTicketID = ID.ToString();
                closed.TicketID= ID.ToString();
                closed.Solution = cinfo.Solution;
                closed.CreatedDate = cinfo.CreatedDate;
                closed.UpdatedDate = cinfo.UpdatedDate;
                db.ClosedTickets.InsertOnSubmit(closed);
                db.SubmitChanges();
            }
        }

        public List<ClosedTicketInfo> SelectAllClosedTicketInfo()
        {
            List<ClosedTicketInfo> lstclosedinfo = new List<ClosedTicketInfo>();
            ClosedTicketInfo closedinfo;

            using (OTMDataContext db = new OTMDataContext())
            {
                var data = (from a in db.ClosedTickets select a).ToList();// db.GETALLClosedTicket(); lamda expression
                foreach (var obj in data)
                {
                    closedinfo = new ClosedTicketInfo();
                    closedinfo.ClosedTicketID = obj.ClosedTicketID;
                    closedinfo.TicketID = obj.TicketID;
                    closedinfo.Solution = obj.Solution;
                    closedinfo.CreatedDate = obj.CreatedDate;
                    closedinfo.UpdatedDate = obj.UpdatedDate;
                    lstclosedinfo.Add(closedinfo);
                }
                return lstclosedinfo;
            }
        }
            public void DeleteByClosedTicketID(string ClosedID)
            {
            
                using (OTMDataContext db = new OTMDataContext())
                {
                    var data = (from a in db.ClosedTickets where a.ClosedTicketID == ClosedID select a).FirstOrDefault();
                    db.ClosedTickets.DeleteOnSubmit(data);
                    db.SubmitChanges();
                }
            }
            public string selectByClosedTicketID(string ClosedTID)
            {
                using (OTMDataContext db = new OTMDataContext())
                {
                    var ID = (from a in db.ClosedTickets where a.ClosedTicketID == ClosedTID select a).FirstOrDefault();
                    return ID.ClosedTicketID;
                }
            }
        }
    }


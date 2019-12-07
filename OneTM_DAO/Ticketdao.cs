using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_Info;
using OneTM_DAO.DBML;

namespace OneTM_DAO
{
   public class Ticketdao
    {
       public List<Ticketinfo> SelectAllTicketinfo()
       {
           List<Ticketinfo> tlst = new List<Ticketinfo>();
           Ticketinfo tf;
           using (OTMDataContext db=new OTMDataContext ())
           {
               var data = (from a in db.Tickets select a).ToList();
               foreach (var obj in data)
               {
                   tf = new Ticketinfo();
                   tf.TicketID = obj.TicketID;
                   tf.Description = obj.Description;
                   tf.CreatedDate = obj.CreatedDate;
                   tf.UpdatedDate = obj.UpdatedDate;
                   tf.TeamID=obj.TeamID;
                   tf.Status = obj.Status;
                   tf.Ticket_Severity = obj.Ticket_Severity;
                   tf.Expireddate =(DateTime) obj.ExpiredDate;
                   tf.Ticket_Estimated_Time =(int)obj.Ticket_Estimated_Time;
                   tlst.Add(tf);
               }
           }
           return tlst;
       }

       public void insertto(Ticketinfo tinfo)
       {
           using (OTMDataContext db=new OTMDataContext())
           {
               Ticket ti = new Ticket();
               Guid id = Guid.NewGuid();
               ti.TicketID = id.ToString();
               ti.TeamID = id.ToString();
               ti.Description = tinfo.Description;
               ti.Status = tinfo.Status;
               ti.CreatedDate = DateTime.UtcNow.AddMinutes(390);
               ti.UpdatedDate = DateTime.UtcNow.AddMinutes(390);
               ti.ExpiredDate = DateTime.UtcNow.AddMinutes(390);
               db.Tickets.InsertOnSubmit(ti);
               db.SubmitChanges();
           }
       }


       public bool updateTicketinfobyId(string ID, Ticketinfo info)
       {
           using (OTMDataContext db = new OTMDataContext())
           {
               var source = (from a in db.Tickets where a.TicketID == ID select a).FirstOrDefault();
               source.Status = info.Status;               
               db.SubmitChanges();
               return true;
           }
       }

       public void DeleteByTicketID(string TicketID)
       {
           using (OTMDataContext db = new OTMDataContext())
           {
               var data = (from a in db.Tickets where a.TicketID == TicketID select a).FirstOrDefault();
               db.Tickets.DeleteOnSubmit(data);
               db.SubmitChanges();
           }
       }
    }
}

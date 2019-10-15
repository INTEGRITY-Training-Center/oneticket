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
       
      
    }
}

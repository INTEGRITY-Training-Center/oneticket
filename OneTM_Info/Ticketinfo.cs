using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OneTM_Info
{
   public class Ticketinfo
    {
       public string TicketID { get; set; }
       public string Description { get; set; }
       public DateTime CreatedDate { get; set; }
       public DateTime UpdatedDate { get; set; }
       public string TeamID { get; set; }
       public string Status { get; set; }
       public DateTime Expireddate { get; set; }
       public int Ticket_Severity { get; set; }
       public int Ticket_Estimated_Time { get; set; }


    }
}

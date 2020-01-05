using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_Info;
using OneTM_DAO;

namespace OneTM_Controller
{
    public class TicketController
    {
        Ticketinfo Tinfo = new Ticketinfo();
        Ticketdao Tdao = new Ticketdao();

        public void TicketInsert(Ticketinfo tinfo)
        {
            Tdao.insertto(tinfo);
        }

    }
}

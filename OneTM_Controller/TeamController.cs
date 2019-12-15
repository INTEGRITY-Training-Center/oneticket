using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_Info;
using OneTM_DAO;

namespace OneTM_Controller
{
    public class TeamController
    {
        TeamInfo Tinfo;
        TeamDAO Tdao;
        public void Insert(TeamInfo tinfo)
        {
            Tdao = new TeamDAO();
            Tdao.InsertToTeam(tinfo);
        }
    }
}

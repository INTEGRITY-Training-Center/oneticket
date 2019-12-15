using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_Info;
using OneTM_DAO;

namespace OneTM_Controller
{
    public class SeverityController
    {
        SeverityInfo Sinfo;
        SeverityDAO Sdao;

        public List<SeverityInfo> selectallseverity()
        {
            List<SeverityInfo> lst = new List<SeverityInfo>();
            Sdao = new SeverityDAO();
            lst = Sdao.SelectAllSeverityInfo();
            return lst;
        }

       
    }
}

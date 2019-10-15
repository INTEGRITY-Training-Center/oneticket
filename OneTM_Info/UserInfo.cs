using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OneTM_Info
{
    public class UserInfo
    {
        public string UserID { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public int UserType { get; set; }

        public DateTime CreatedDate { get; set; }
        public DateTime UpdatedDate { get; set; }
    }
}

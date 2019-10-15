using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OneTM_Info
{
    public class AccountInfo
    {
        public string Account_ID {get; set;}
        public bool Account_Status { get; set; }
        public string Email { get; set; }
        public string User_Name { get; set; }
        public string Password { get; set; }
        public string Credit { get; set; }
        public string NRC { get; set; }
        public string Phone_Number { get; set; }
        public DateTime DOB { get; set; }
        public DateTime Created_Date { get; set; }
        public DateTime Edited_Date { get; set; }
    }
}


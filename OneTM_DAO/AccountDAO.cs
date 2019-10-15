using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_Info;
using OneTM_DAO.DBML;



namespace OneTM_DAO
{
    public class AccountDAO
    {
     public List<AccountInfo> SelectAllAccountInfo()
        {
            List<AccountInfo> listaccinfo = new List<AccountInfo>();

            AccountInfo accinfo;

            using (OTMDataContext db=new OTMDataContext ())
            {
                var data = (from a in db.Accounts select a).ToList();

                foreach(var obj in data)
                {
                    accinfo = new AccountInfo();

                    accinfo.Account_ID = obj.AccountID;
                    accinfo.Account_Status = obj.Accountstatus;
                    accinfo.Credit = obj.Credit;
                    accinfo.DOB = obj.DOB;
                    accinfo.Email = obj.Email;
                    accinfo.NRC = obj.NRC;
                    accinfo.User_Name = obj.UserName;
                    accinfo.Password = obj.Password;
                    accinfo.Phone_Number = obj.PhoneNumber;
                    accinfo.Created_Date = obj.CreatedDate;
                    accinfo.Edited_Date = obj.UpdatedDate;
                    listaccinfo.Add(accinfo);

                }
            }

            return listaccinfo;
        }
    }
}

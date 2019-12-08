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

        AccountInfo Accinfo = new AccountInfo();
        List<AccountInfo> lstAccinfo = new List<AccountInfo>();

        public void InserttoAccount(AccountInfo ainfo)
        {
            using (OTMDataContext db = new OTMDataContext())
            {
                Account Acctbl = new Account();
                Guid ID = Guid.NewGuid();
                Acctbl.AccountID = ID.ToString();
                Acctbl.Accountstatus=true;
                Acctbl.Email = ainfo.Email;
                Acctbl.UserName = ainfo.User_Name;
                Acctbl.Password = ainfo.Password;
                Acctbl.Credit = ainfo.Credit;
                Acctbl.NRC = ainfo.NRC;
                Acctbl.PhoneNumber = ainfo.Phone_Number;
                Acctbl.DOB = ainfo.DOB;
                Acctbl.CreatedDate = DateTime.UtcNow.AddMinutes(390);
                Acctbl.UpdatedDate = DateTime.UtcNow.AddMinutes(390);
                db.Accounts.InsertOnSubmit(Acctbl);
                db.SubmitChanges();
            }
        }

        public bool UpdateByAccountID(string ID, AccountInfo ainfo)
        {
            using (OTMDataContext db = new OTMDataContext())
            {
                var source = (from a in db.Accounts where a.AccountID == ID select a).FirstOrDefault();
                source.Email = ainfo.Email;
                source.Accountstatus = true;
                source.UserName = ainfo.User_Name;
                source.Password = ainfo.Password;
                source.Credit = ainfo.Credit;
                source.NRC = ainfo.NRC;
                source.PhoneNumber = ainfo.Phone_Number;
                source.DOB = ainfo.DOB;
                source.CreatedDate = DateTime.UtcNow.AddMinutes(390);
                source.UpdatedDate = DateTime.UtcNow.AddMinutes(390);
                db.SubmitChanges();

                return true;
            }
        }

        public bool DeleteByAccountID(string ID)
        {
            using (OTMDataContext db = new OTMDataContext())
            {

                var source = (from a in db.Accounts where a.AccountID == ID select a).FirstOrDefault();
                if (source != null)
                {
                    db.Accounts.DeleteOnSubmit(source);

                    db.SubmitChanges();
                }
                return true;
            }
        }


        public string selectByAccountID(string ID)
        {
            using (OTMDataContext db = new OTMDataContext())
            {
                var source = (from a in db.Accounts where a.AccountID == ID select a).FirstOrDefault();
                return source.AccountID;
            }
        }


       
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


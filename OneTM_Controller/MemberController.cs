﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneTM_Info;
using OneTM_DAO;

namespace OneTM_Controller
{
    class MemberController
    {
        Member_Info minfo;
        Member_DAO Mdao;
        public void Insert(TeamInfo tinfo)
        {
            Mdao = new Member_DAO();
            Mdao.MemberInsert(minfo);
        }
        public List<Member_Info> selectallmember()
        {
            List<Member_Info> lst = new List<Member_Info>();
            Mdao = new Member_DAO();
            return Mdao.SelectAllMember_Info();
        }
    }
}

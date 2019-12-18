using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using MyAPI.Models;

namespace MyAPI.Controllers
{
    public class TeamController : ApiController
    {
        DB_A50B4C_itchtunticketEntities db = new DB_A50B4C_itchtunticketEntities();
        // GET api/team
        public IEnumerable<Team> Get()
        {
            return db.Teams.ToList<Team>();
        }

        // GET api/team/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/team
        public void Post([FromBody]string value)
        {
        }

        // PUT api/team/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/team/5
        public void Delete(int id)
        {
        }
    }
}

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
        public IEnumerable<Team> Get(string id)
        {
            var list = from g in db.Teams where g.TeamID == id select g;
            return list;  

        }

        // POST api/team
        public HttpResponseMessage Post(Team value)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Teams.Add(value);
                    db.SaveChanges();
                    return Request.CreateResponse(HttpStatusCode.OK);
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.InternalServerError, "Invalid Model");
                }
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.InternalServerError, ex.Message);
            }  
        }

        // PUT api/team/5
        public Team Put(string tDes)
        {
            var obj = db.Teams.Where(n => n.TeamID == tDes).SingleOrDefault();
            if (obj != null)
            {
                Guid ID = Guid.NewGuid();
                obj.TeamID = ID.ToString();
                obj.TeamDescription = tDes;
                obj.CreatedDate = DateTime.UtcNow.AddMinutes(390);
                obj.UpdatedDate = DateTime.UtcNow.AddMinutes(390);
                db.SaveChanges();
            }
            return obj;
        }

        // DELETE api/team/5
        public void Delete(string id)
        {
            var obj = db.Teams.Find(id);
            db.Teams.Remove(obj);
            db.SaveChanges(); 
        }
    }
}

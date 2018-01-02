
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Database;
using System.Data.Linq;

namespace Online_Music_System
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        MusicdbDataContext contexts = new MusicdbDataContext();
        User u = new User();       
        public void ProcessRequest(HttpContext context)
        {
            string username = context.Request.QueryString["uname"];
            var query = from c in contexts.Users
                        where c.Username == username
                        select c.Image.ToArray();
            context.Response.BinaryWrite(query.First());
            context.Response.End();

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
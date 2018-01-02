using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Linq;
using Database;

namespace User1
{
    public class User_Class
    {
        MusicdbDataContext context = new MusicdbDataContext();
        User u = new User();

        public bool Login(string Username, string Password)
        {

            var query = from c in context.Users
                        where c.Username == Username && c.Password == Password
                        select c.Password;
            if (query.Count() == 1)
            {
                return true;

            }
            else
            {
                return false;
            }
        }

        public int Registration(string Name, string Username, string Password, string Email, Binary Image, string Security_Question, string Security_ans)
        {
            int result = 0;
            u.Name = Name;
            u.Username = Username;
            u.Password = Password;
            u.Email = Email;
            u.Image = Image;
            u.Security_Question = Security_Question;
            u.Security_Ans = Security_ans;
     
            context.Users.InsertOnSubmit(u);
            context.SubmitChanges();
            result = 1;

            return result;
        }


        public string forget_Password(string Username)
        {

            var query = from c in context.Users
                        where c.Username == Username
                        select c.Security_Question;
                    
                string str = null;
            int isnull= query.Count();
            if(isnull==0)
                return null;
            else{
                str = query.First().ToString();
               
                return str;
            }
        }

        public bool check_ans(string Username, string ans)
        {
            var query = from c in context.Users
                        where c.Username == Username
                        select new { c.Security_Ans, c.Password };

            string s = "Not valid";
            string str = null;

            foreach (var q in query)
            {
                if (ans == q.Security_Ans)
                {
                    return true;
                }
                else
                {
                    str = s;
                }
            }
            return false;
        }
    }
}

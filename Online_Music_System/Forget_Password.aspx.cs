using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using User1;

namespace OMS
{
    public partial class Forget_Password : System.Web.UI.Page
    {
        string Username;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        User_Class userobj = new User_Class();
        protected void Button2_Click(object sender, EventArgs e)
        {
            Username = TextBox1.Text;
                          
            string Question = userobj.forget_Password(Username);
            
            if (Question != null)
            {
                if (Question.Equals("0"))
                {
                    Label7.Text = "Favourite color";
                }
                if (Question.Equals("1"))
                {
                    Label7.Text = "Your Pet's name";
                }
            }
            else
            {
                Label7.Text = "Enter correct Username";
            }

        }
        MusicdbDataContext context = new MusicdbDataContext();
        User u = new User();
        bool IsValid3 = false;

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Username1 = TextBox1.Text;
            string ans = TextBox2.Text;
            string password1 = TextBox3.Text;
            
            bool answer = userobj.check_ans(Username1, ans);
            if (answer == false)
            {
                Label9.Text = "Incorrect ans";
            }
  
            if (answer == true && IsValid3==true)
            {
                var query = (from c in context.Users
                             where c.Username == Username1
                             select c);
                 
{
                     query.First().Password = password1;
                    context.SubmitChanges();
                    Label9.Text = "Password is Successfully Changed.";
                    Response.Redirect("Login.aspx");
                    }
            }
          
        }
        
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
     
            args.IsValid = false;
            string name;
            name = TextBox3.Text;

            if ((name.Length) >= 5 && (name.Length) <= 10)
            {
                args.IsValid = true;
                IsValid3 = true;
            }


            for (int i = 0; i < (TextBox3.Text.Length); i++)
            {
                if (Char.IsLetter(name[i]))
                {
                    args.IsValid = true;
                    IsValid3 = true;

                    break;
                }
                else {
                    IsValid3 = false;
                }

            }
        }
    }
        }

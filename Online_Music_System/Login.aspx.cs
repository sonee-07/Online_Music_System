using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using User1;

namespace OMS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Username = (string)Session["Username"];
            if (Username != null)
            {
                Response.Redirect("main_page.aspx");
            }
           // string MyCookieValue;
            if (Request.Cookies["ID"] != null)
            {
                Response.Cookies["ID"].Expires = DateTime.Now.AddDays(-1);
            }
             
        }
        User_Class Userobject = new User_Class();

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {


        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            String Username = Login1.UserName;
            String Password = Login1.Password;

            bool valid = Userobject.Login(Username, Password);   //method of user class for checking login credential

            if (valid == true)
            {
                Session["username"] = Username;
                Response.Redirect("main_page.aspx");
            }
            else
            {
              Login1.FailureText="Enter Correct Username and password";
                
            }
        }
    }
}

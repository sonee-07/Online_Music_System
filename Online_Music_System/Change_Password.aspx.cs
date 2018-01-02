using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using System.Data.Linq;
using System.IO;

namespace Online_Music_System
{
    public partial class Change_Password : System.Web.UI.Page
    {
        MusicdbDataContext context = new MusicdbDataContext();
        User u=new User();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Search.aspx");

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("main_page.aspx");
        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            string name = TextBox3.Text;
            Binary Image;
             if(IsValid4==true)
             { 
            var query = (from c in context.Users
                         where c.Username == (string)Session["Username"]
                         select c).Single();
            var check = query.Name;
            if (name != null && name!= "")
            {
                query.Name = name;
            }

            BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream);
            byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);

            if (bytes.Length > 1)
            {
                Image = bytes;
                query.Image = Image;
            }
             check = query.Name;
             var imagecheck = query.Image;
            context.SubmitChanges();
            Label6.Text = "Changes done!";
             }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string oldpassword=TextBox2.Text;
            string newpassword=TextBox1.Text;
            string username=(string)Session["Username"];
          
            var query = from c in context.Users
                        where c.Username == username
                        select c.Password;
           
            if(oldpassword.Equals(query.Single()))
            {
                var query1 = (from c in context.Users
                             where c.Username == username
                             select c).Single();
                query1.Password = newpassword;
                context.SubmitChanges();
               
                Label3.Text="Password is Successfully Changed";
            }
            else
            {
              Label3.Text="Old password is incorrect";
            }
            
            
        }
        bool IsValid3 = false;
        bool IsValid4 = true;

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;
            string name;
            name = TextBox2.Text;

            if ((name.Length) >= 5 && (name.Length) <= 10)
            {
                args.IsValid = true;
                IsValid3 = true;
            }


            for (int i = 0; i < (TextBox2.Text.Length); i++)
            {
                if (Char.IsLetter(name[i]))
                {
                    args.IsValid = true;
                    IsValid3 = true;

                    break;
                }
                else
                {
                    IsValid3 = false;
                }

            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = true;
            string name;
            name = TextBox3.Text;

            for (int i = 0; i < (TextBox3.Text.Length); i++)
            {
                if (!Char.IsLetter(name[i]))
                {
                    args.IsValid = false;
                    IsValid4 = false;

                    break;
                
                }

            }
        }

    }
}
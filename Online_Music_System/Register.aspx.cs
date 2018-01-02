using System;
using System.Linq;
using System.Web.UI.WebControls;
using User1;
using System.IO;
using System.Data.Linq;
using Database;

namespace Online_Music_System
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        User_Class userobj = new User_Class();
        MusicdbDataContext context = new MusicdbDataContext();

        bool IsValid1 = false;
        bool IsValid2 = false;
        bool IsValid3 = false;
        bool IsValid4 = false;

        protected void CustomValidator5_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = true;
            string name;
            name = TextboxName.Text;

            for (int i = 0; i < (TextboxName.Text.Length); i++)
            {
                if (!Char.IsLetter(name[i]))
                {
                    args.IsValid = false;
                    IsValid4 = false;
                    break;
                }
                

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Name, Username, Password, Email, Security_Question, Security_ans;
            Binary Image;
            if (IsValid1 && IsValid2 && IsValid3 && IsValid4)
            {
                BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream);
                int i;

                byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);

                Name = TextboxName.Text;
                Username = TextboxUsername.Text;
                Password = TextboxPassword.Text;
                Email = TextBoxEmail.Text;
                Image = bytes;
                Security_Question = (DropDownList1.SelectedIndex).ToString();
                Security_ans = TextBoxSecurityQue.Text;

                i = userobj.Registration(Name, Username, Password, Email, Image, Security_Question, Security_ans);

                if (i == 1)
                {
                    Session["Username"] = TextboxUsername.Text;
                    Response.Redirect("main_page.aspx");
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

            args.IsValid = false;
            var query = from c in context.Users
                        where c.Username == TextboxUsername.Text
                        select c.Username;
           
            if (query.Count() == 0)
            {
                
                args.IsValid = true;
                IsValid1 = true;


            }
            else
            {
                args.IsValid = false;
            }

        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args1)
         {
            string str = TextboxUsername.Text;
            args1.IsValid = false;
            string name;
            name = TextboxUsername.Text;
            if ((str.Length) >= 5 && (str.Length) <= 10)
            {
                for (int i = 0; i < (TextboxUsername.Text.Length); i++)
                {
                    if (Char.IsLetter(name[i]))
                    {
                        args1.IsValid = true;
                        IsValid2 = true;
                        break;
                    }
                   

                }
            }
            else
            {
                IsValid2 = false;
                args1.IsValid = false;
            }

        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {

            args.IsValid = false;
            string name;
            name = TextboxPassword.Text;

            if ((name.Length) >= 5 && (name.Length) <= 10)
            {

                for (int i = 0; i < (TextboxPassword.Text.Length); i++)
                {
                    if (Char.IsLetter(name[i]))
                    {
                        args.IsValid = true;
                        IsValid3 = true;

                        break;
                    }
                   

                }
            }
            else
            {
                args.IsValid = false;
                IsValid3 = false;
            }
        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string[] valid={"jpeg","png","jpg"};
            args.IsValid = false;
            string file_ext = System.IO.Path.GetExtension(FileUpload1.FileName);
            for (int i = 0; i < valid.Length; i++)
            {
                if (file_ext.ToLower() == "." + valid[i])
                {
                    IsValid4 = true;
                    args.IsValid = true;
               }
            }
        }
    }
}

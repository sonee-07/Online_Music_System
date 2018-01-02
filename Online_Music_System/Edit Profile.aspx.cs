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
    public partial class Edit_Profile : System.Web.UI.Page
    {
        MusicdbDataContext context = new MusicdbDataContext();
        User u = new User();
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            Binary Image;

            var query = (from c in context.Users
                         where c.Username == (string)Session["Username"]
                         select c).Single();

            if (name != null)
            {
                query.Name = name;
            }
            if (FileUpload1.PostedFile.InputStream != null)
            {
                BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream);
                byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);
                Image = bytes;
                query.Image = Image;
            }
            context.SubmitChanges();

        }
    }
}
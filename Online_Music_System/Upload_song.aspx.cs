using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Song_Class;
using Playlist_Class;
using System.IO;
using User1;
using Database;
using Media_Player_ASP;
using System.Threading;
using System.Data.Linq;
namespace Online_Music_System
{
    public partial class Upload_song : System.Web.UI.Page
    {

        SongClass s = new SongClass();
        Playlistclass p = new Playlistclass();
        MusicdbDataContext context = new MusicdbDataContext();
        
        string url;

        protected void Page_Load(object sender, EventArgs e)
        {
            string playlistname = Request.QueryString["playlistname"];
            string username = (string)Session["Username"];

            var query1 = from c in context.Playlists
                         join b in context.Users
                         on c.Username equals b.Username
                         where c.Playlistname == playlistname && b.Username == username
                         select c.Playlist_Id;

            var query2 = from c in context.Song_to_Playlists
                         join b in context.Songs
                         on c.Song_Id equals b.Song_Id
                         where c.Playlist_Id == query1.First()
                         select new { song = b.File.ToArray(), songname = b.Songname };
         
                GridView1.DataSource = query2;
                GridView1.DataBind();
           

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("main_page.aspx");
        }
        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Search.aspx");

        }



        int id;
        protected void Button1_Click(object sender, EventArgs e)
        {
            string playlistname = Request.QueryString["playlistname"];
          
            Guid g = Guid.NewGuid();
            s.Song_Id = g;
            bool Isvalid = false; 
            string[] valid = { "mp3", "mp4"};
            string file_ext = System.IO.Path.GetExtension(FileUpload1.FileName);
           
            for (int i = 0; i < valid.Length; i++)
            {
                if (file_ext == "." + valid[i])
                {
                    Isvalid = true;
                }
            }
            if (Isvalid == true)
            {

                string songname = FileUpload1.PostedFile.FileName;
                s.songname = Path.GetFileName(songname);
                Label4.Text = s.songname;
                BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream);

                byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);
                s.File1 = bytes;
                s.tag = TextBox1.Text;
                string username = (string)Session["Username"];

                var query1 = from c in context.Playlists
                             join b in context.Users
                             on c.Username equals b.Username
                             where c.Playlistname == playlistname && b.Username == username
                             select c.Playlist_Id;

                id = query1.First();

                s.UploadSong(id);

                var query2 = from c in context.Song_to_Playlists
                             join b in context.Songs
                             on c.Song_Id equals b.Song_Id
                             where c.Playlist_Id == query1.First()
                             select new { song = b.File.ToArray(), songname = b.Songname };

               // Label4.Text = query2.First().songname.ToString();
                string filename = query1.First().ToString();
                GridView1.DataSource = query2;
                GridView1.DataBind();

                foreach (var c in query2)
                {
                    url = @"C:\Users\Admin\Documents\Visual Studio 2013\Projects\Online_Music_System\new\" + c.songname;
                    File.WriteAllBytes(url, c.song);
                }
            }
            else {
                Label4.Text = "Oops..Incorrect file type..Select mp3/mp4.";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
               string url ;
            string name = GridView1.SelectedRow.Cells[1].Text;
            url = @"C:\Users\Admin\Documents\Visual Studio 2013\Projects\Online_Music_System\new\" + name;

             //   url = @"C:\Users\Divya\Desktop\New\" + c.songname + ".mp3";
               // File.WriteAllBytes(url, c.song);
            

            Media_Player_Control1.MovieURL = url;
        }

      
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string name = GridView1.DataKeys[e.RowIndex].Values["songname"].ToString();

            s.RemoveSong(name);
            
            string playlistname = Request.QueryString["playlistname"];
            string username = (string)Session["Username"];

           
            var query1 = from c in context.Playlists
                         join b in context.Users
                         on c.Username equals b.Username
                         where c.Playlistname == playlistname && b.Username == username
                         select c.Playlist_Id;

            var query2 = from c in context.Song_to_Playlists
                         join b in context.Songs
                         on c.Song_Id equals b.Song_Id
                         where c.Playlist_Id == query1.First()
                         select new { song = b.File.ToArray(), songname = b.Songname };

            GridView1.DataSource = query2;
            GridView1.DataBind();
           
        }

     
    }
}
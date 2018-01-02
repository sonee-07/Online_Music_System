using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using System.Data.Linq;

namespace Online_Music_System
{
    public partial class view_profile : System.Web.UI.Page
    {
        MusicdbDataContext context = new MusicdbDataContext();
        User u = new User();

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

        protected void Page_Load(object sender, EventArgs e)
        {
            string uname1 = Context.Request.QueryString["name"];
            var query1 = from c in context.Users
                         where c.Username == uname1
                         select c.Name;
            var query2 = from c in context.Users
                         where c.Username == uname1
                         select c.Email.ToString();

            name.Text = query1.First();
            email.Text = query2.First();
            uname.Text = uname1;
            Image1.ImageUrl = @"Handler1.ashx?uname=" + uname1;


            var query = from c in context.Playlists
                        join b in context.Users
                        on c.Username equals b.Username
                        where b.Username == uname1
                        select c.Playlistname;
            GridView1.DataSource = query;
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string playlistname = GridView1.SelectedRow.Cells[1].Text.ToString();
            var query1 = from c in context.Playlists
                         join b in context.Users
                         on c.Username equals b.Username
                         where c.Playlistname == playlistname
                         select c.Playlist_Id;

            var query2 = from c in context.Song_to_Playlists
                         join b in context.Songs
                         on c.Song_Id equals b.Song_Id
                         where c.Playlist_Id == query1.First()
                         select new { song = b.File.ToArray(), songname = b.Songname };

            GridView2.DataSource = query2;
            GridView2.DataBind();
           
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string name = GridView2.SelectedRow.Cells[1].Text.ToString();
            string url = @"C:\Users\Admin\Documents\Visual Studio 2013\Projects\Online_Music_System\new\" + name;
            Media_Player_Control1.MovieURL = url;
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using Playlist_Class;
using User1;

namespace OMS
{
    public partial class Profile : System.Web.UI.Page
    {
        MusicdbDataContext m = new MusicdbDataContext();
        Playlistclass p = new Playlistclass();
        User_Class u = new User_Class();
        MusicdbDataContext context = new MusicdbDataContext();
        string Username;
         public bool Isvalid1 = false;   
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {       string Uname = (string)Session["Username"];
                var query1 = from c in m.Users
                             where c.Username == Uname
                             select c.Name;
                var query2 = from c in m.Users
                             where c.Username == Uname
                             select c.Email.ToString();
             
                name.Text = query1.First();
                email.Text = query2.First();
                uname.Text = Uname.ToString();
                Image1.ImageUrl = @"Handler1.ashx?uname=" + Uname.ToString();

                var query = from c in context.Playlists
                            join b in context.Users
                            on c.Username equals b.Username
                            where b.Username == Uname
                            select c.Playlistname;
                try
                {
                    var test = query.First();
                    GridView1.DataSource = query;
                    GridView1.DataBind();
                }
                catch(Exception ex)
                { }
        }
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

     
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            int Playlist_Id;
            Random r = new Random();
            Playlist_Id = r.Next();

            string Playlistname;
            //string Username;
            Username = (string)Session["Username"];

           Playlistname = TextBox1.Text;

          //  Session["Playlistid"] = Playlist_Id;
           if (Isvalid1 == true)
           {
               p.CreatePlaylist(Username, Playlist_Id, Playlistname);
           }

                var query = from c in context.Playlists
                            join b in context.Users
                            on c.Username equals b.Username
                            where b.Username==Username
                            select c.Playlistname;
                GridView1.DataSource = query;
                GridView1.DataBind();
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string playlistname1 = GridView1.SelectedRow.Cells[1].Text;
            
            Response.Redirect("Upload_song.aspx?playlistname="+playlistname1);

        }

        
        protected void CustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string playlistname= TextBox1.Text.ToLower();
            if (TextBox1.Text == "")
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = false;
                var query = from c in context.Playlists
                            where c.Playlistname == TextBox1.Text
                            select c.Username;

                if (query.Count() == 0)
                {

                    if ((playlistname.Length) >= 5 && (playlistname.Length) <= 20)
                    {
                        for (int i = 0; i < (playlistname.Length); i++)
                        {
                            if (!Char.IsLetterOrDigit(playlistname[i])) 
                            {
                                args.IsValid = false;
                                break;
                            }
                            else
                            {
                                args.IsValid = true;
                                Isvalid1 = true;
                            }
                         }
                        
                    }
                    else
                    {
                         args.IsValid = false;
                    }
                   
                }
            }
        }

     

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string playlistname1 = GridView1.SelectedRow.Cells[1].Text;

            Response.Redirect("Upload_song.aspx?playlistname=" + playlistname1);

        }
    }
}
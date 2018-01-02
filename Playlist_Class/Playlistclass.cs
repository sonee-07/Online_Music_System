using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Database;

namespace Playlist_Class
{
    public class Playlistclass
    {
        MusicdbDataContext context = new MusicdbDataContext();
        public String Playlistname
        {
            get;
            set;
        }

        public int Playlist_Id
        {
            get;
            set;
        }
        Playlist p = new Playlist();
           
        public void CreatePlaylist(string Username, int Playlist_Id, string Playlistname)
        {
            try
            {
                p.Playlist_Id = Playlist_Id;
                p.Username = Username;
                p.Song_Count = 0;
                p.Like_Count = 0;
                p.Playlistname = Playlistname;
                context.Playlists.InsertOnSubmit(p);
                context.SubmitChanges();
            }
            catch (Exception e)
            {
                
            }


        }

     }
}

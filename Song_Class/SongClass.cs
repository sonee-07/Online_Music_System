using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Data.Linq;
using Database;
using Playlist_Class;


namespace Song_Class
{

    public class SongClass
    {
        MusicdbDataContext context = new MusicdbDataContext();

        public Guid Song_Id
        {
            get;
            set;
        }

        public String songname
        {
            get;
            set;
        }

        public String tag
        {
            get;
            set;
        }

        public Binary File1
        {
            get;
            set;
        }

        Song s = new Song();
        //   Playlistclass p = new Playlistclass();
        Song_to_Playlist sp = new Song_to_Playlist();

        public void UploadSong(int playlistid)
        {
            try
            {
                s.Song_Id = Song_Id;
                s.Songname = songname;
                s.File = File1;
                s.Tag = tag;
                context.Songs.InsertOnSubmit(s);
                context.SubmitChanges();

                sp.Playlist_Id = playlistid;
                sp.Song_Id = Song_Id;
                context.Song_to_Playlists.InsertOnSubmit(sp);
                context.SubmitChanges();
            }
            catch (Exception e)
            { }
  
        }

        public void RemoveSong(string name)
        {
            Song s3 = context.Songs.First(q1 => q1.Songname == name);

            var test2 = s3.Song_Id;

            Song_to_Playlist s2 = context.Song_to_Playlists.First(q => q.Song_Id == test2);
            context.Song_to_Playlists.DeleteOnSubmit(s2);
            context.SubmitChanges();

            Song s1 = context.Songs.First(q => q.Songname == name);
            context.Songs.DeleteOnSubmit(s1);
            context.SubmitChanges();


        }

        public IQueryable<string> searchsongbytag(string name)
        {
            var query = from c in context.Songs
                        where c.Tag == name
                        select c.Songname;

            return query;

        }


        public IQueryable<Object> searchsongbyusername(string name)
        {

            var query1 = from c in context.Playlists
                         join b in context.Users
                         on c.Username equals b.Username
                         where b.Username == name
                         select c.Playlist_Id;

            var query = from c in context.Song_to_Playlists
                        join b in context.Songs
                        on c.Song_Id equals b.Song_Id
                        where query1.Contains(c.Playlist_Id)
                        select new { song = b.File.ToArray(), songname = b.Songname };
            return query;

        }
        public IQueryable<Object> searchsongbyuser(string name)
        {
            var query = from c in context.Users
                        where c.Name == name
                        select new { User_Name = c.Username, Img_Id = c.Username };


            return query;

        }
    }

  

}
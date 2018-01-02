using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;
using Database;
using Song_Class;

namespace Online_Music_System
{
    public partial class play : System.Web.UI.Page
    {
        MusicdbDataContext context = new MusicdbDataContext();
        SongClass s = new SongClass();
        protected void Page_Load(object sender, EventArgs e)
        {
               
            
               
            
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


        

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (RadioButtonList1.SelectedValue == "Search By Tag")
            {
               string tag = TextBox1.Text;
               var query = s.searchsongbytag(tag);
                
                GridView2.DataSource = null;
                GridView2.DataBind();
                
                try
                {
                    var ifnull = query.First();
                    if (ifnull == null)
                    {
                        
                    }
                    else
                    {

                        Label1.Text = null;
                        GridView1.DataSource = query;
                        GridView1.DataBind();
                    }
                }
                
                catch (Exception ex)
                { 
                    Label1.Text = "No results for this search"; 
                }
            }
            
            else if (RadioButtonList1.SelectedValue == "Search Song By Username")
            {

                string Username = TextBox1.Text;
                var query=s.searchsongbyusername(Username);
                GridView2.DataSource = null;
                GridView2.DataBind();
                
                try
                {
                    var ifnull = query;
                    if (ifnull == null)
                    {
                        
                    }
                    else
                    {

                        Label1.Text = null;
                        GridView1.DataSource = query;
                        GridView1.DataBind();
                    }
                }
                catch (Exception ex)
                { Label1.Text = "No results for this search"; }
            }


            else if (RadioButtonList1.SelectedValue == "Search User")
            {
                string name = TextBox1.Text;
                var query = s.searchsongbyuser(name);  
                GridView1.DataSource = null;
                GridView1.DataBind();
                 try
                {
                    var ifnull = query.First();
                    if (ifnull == null)
                    {
                        Label1.Text = "No results for this search";
                    }
                    else
                    {
                        Label1.Text = null;
                        GridView2.DataSource = query;
                        GridView2.DataBind();
                    }
                }
                catch (Exception ex)
                 { Label1.Text = "No results for this search"; }
            }
         }
        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string url;
            string name = GridView1.SelectedRow.Cells[1].Text.ToString();
                url = @"C:\Users\Admin\Documents\Visual Studio 2013\Projects\Online_Music_System\new\" + name;
                Media_Player_Control1.MovieURL = url;
         
        }

     
        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            /*string uname = GridView2.SelectedRow.Cells[2].Text;
            Response.Redirect("view profile.aspx?name=" + uname);*/
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("view profile.aspx?name="+GridView2.SelectedRow.Cells[1].Text.ToString());
        }


    }
}

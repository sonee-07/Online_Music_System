<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main_page.aspx.cs" Inherits="trial.main_page" %>


 <%@ Register assembly="Media-Player-ASP.NET-Control" namespace="Media_Player_ASP.NET_Control" tagprefix="cc1" %>


 <%HttpContext.Current.Response.Cache.SetAllowResponseInBrowserHistory(false);
    HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
    HttpContext.Current.Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
    HttpContext.Current.Response.Cache.SetValidUntilExpires(false);
    HttpContext.Current.Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
    HttpContext.Current.Response.Cache.SetNoStore();
    Response.Cache.SetExpires(DateTime.Now);
    System.Web.HttpContext.Current.Response.AddHeader("Pragma", "nocache");
    Response.Cache.SetValidUntilExpires(true);
    Response.Buffer = true;
    Response.ExpiresAbsolute = DateTime.Now.Subtract(new TimeSpan(1, 0, 0, 0));
    Response.Expires = 0;
    Response.CacheControl = "No-cache";
    Response.Cache.SetExpires(DateTime.UtcNow.AddYears(-4));
    Response.ExpiresAbsolute = DateTime.Now.Subtract(new TimeSpan(1, 0, 0, 0));
    Response.AppendHeader("Pragma", "nocache");
    Response.Cache.AppendCacheExtension("must-revalidate,proxy-revalidate,post-check=0,pre-check=0"); %>
    <script lang="javascript" type="text/javascript">
        window.onbeforeunload=function(){}</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><link rel="stylesheet" type="css" href="main_page.css"/>
    <title></title>
    
    <style type="text/css">
        body{
            background-image:url('s2.jpg');
            background-repeat: no-repeat;
            background-size:cover;
            background-attachment: fixed;
            width: 763px;
        }
          .playlst{
    margin-left:480px;
    font-size:38px;
    font-family:'Cheddar Jack';
}
       .dropdown-content{
           display:none;
           position:absolute;
           right:0;
           background-color:#f9f9f9;
           box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
           margin-top:1px;
       }

       .dropdown-content a{
           color:black;
           padding:15px 16px;
           text-decoration:none;
           display:block;
       }
       
       .dropdown-content a:hover{
           background-color:#f1f1f1
       }

       .dropdown:hover .dropdown-content{
           display:block;
       }
          
       .dropdown:hover .dropbtn{
           
       }
       
        .homebtn{
           margin-left:90px;
           
       }
         .homediv{
             width:20%;
         }
         
         .search{
          
          margin-top:13px;
       }   
         
         .dropdown{
           margin-left:10px;

       }    

          .dropbtn{
           margin-top:13px;
       }

            .title{
    position:fixed;
    text-align:center;
    background-color:rgba(6,50,60,0.85);
    height:50px;
    width:74%;
    margin-left:-10px;
    margin-top:0px;
    color:white;
    font-family:'Freehand591 BT';
    font-size:40px;
    
}
         .button{
             position:fixed;
           width:27%;
           background-color:rgba(6,50,60,0.85);
           height:50px;
           margin-left:988px;
          
       }
        
       .gridplay{
           margin-left:170px;
       }

   .player{
       margin-left:350px;
   }
    .grid4{
       margin-left:470px;
   }
   .oops{
       margin-left:500px;
       font-size:25px;
   }
      
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
       <br/>
         <div class="title">
             &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
           The Music Chamber
        </div>

        <div class="button">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            
             <asp:ImageButton ID="ImageButton4" CssClass="homebtn" runat="server"  Height="35px" Width="30px" ImageUrl="~/homeicon.png" OnClick="ImageButton4_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="24px" ImageUrl="~/search.png" Width="25px" CssClass="search" OnClick="ImageButton1_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/profile.png" Height="25px" Width="30px" OnClick="ImageButton2_Click1" />
            
            &nbsp;<div class="dropdown"  style="float: right; width: 53px;">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="25px" Width="30px" CssClass="dropbtn" ImageUrl="~/set.png" />
              <div class="dropdown-content">
                    <a href="Change_Password.aspx">Edit Profile &nbsp;&nbsp;&nbsp;&nbsp;</a>
                  <a href="Logout.aspx">Logout&nbsp;&nbsp;&nbsp;&nbsp;</a>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>

       </div>

<br/><br/><br/><br/><br/>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MusicdbConnectionString %>" SelectCommand="SELECT [Playlistname] FROM [Playlist] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="Username" SessionField="Username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br/><br/><br/><br/><br/><br/>
        <table style="width: 50%;">
                <tr>
                    <td> <asp:GridView ID="GridView1" CssClass="gridplay" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridViewdisplaysong1_SelectedIndexChanged"  BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateSelectButton="True">
         <FooterStyle BackColor="White" ForeColor="#333333" />
<HeaderStyle CssClass="headerstyle" BackColor="#336666" Font-Bold="True" ForeColor="White" />
<Columns>
<asp:BoundField HeaderText = "Playlist_Name" DataField="Playlist_Name" />
<asp:TemplateField HeaderText="Image">
<ItemTemplate>
<asp:Image ID="Image1" runat="server" ImageUrl=' <%#"Handler1.ashx?uname=" + Eval("Img_Id")%>' Height="154px" Width="150px" />
</ItemTemplate>
</asp:TemplateField>
</Columns>
         <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="White" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F7F7F7" />
         <SortedAscendingHeaderStyle BackColor="#487575" />
         <SortedDescendingCellStyle BackColor="#E5E5E5" />
         <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
     </td>
                    <td>
                         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridViewdisplaysong2_SelectedIndexChanged" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateSelectButton="True">
         <FooterStyle BackColor="White" ForeColor="#333333" />
<HeaderStyle CssClass="headerstyle" BackColor="#336666" Font-Bold="True" ForeColor="White" />
<Columns>
<asp:BoundField HeaderText = "Playlist_Name" DataField="Playlist_Name" />
<asp:TemplateField HeaderText="Image">
<ItemTemplate>
<asp:Image ID="Image1" runat="server" ImageUrl=' <%#"Handler1.ashx?uname=" + Eval("Img_Id")%>' Height="154px" Width="150px" />
</ItemTemplate>
</asp:TemplateField>
</Columns>
         <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="White" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F7F7F7" />
         <SortedAscendingHeaderStyle BackColor="#487575" />
         <SortedDescendingCellStyle BackColor="#E5E5E5" />
         <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>

                    </td>
                   <td> <asp:GridView ID="GridView3"  runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridViewdisplaysong3_SelectedIndexChanged" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateSelectButton="True">
         <FooterStyle BackColor="White" ForeColor="#333333" />
<HeaderStyle CssClass="headerstyle" BackColor="#336666" Font-Bold="True" ForeColor="White" />
<Columns>
<asp:BoundField HeaderText = "Playlist_Name" DataField="Playlist_Name" />
<asp:TemplateField HeaderText="Image">
<ItemTemplate>
<asp:Image ID="Image1" runat="server" ImageUrl=' <%#"Handler1.ashx?uname=" + Eval("Img_Id")%>' Height="154px" Width="150px" />
</ItemTemplate>
</asp:TemplateField>
</Columns>
         <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="White" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F7F7F7" />
         <SortedAscendingHeaderStyle BackColor="#487575" />
         <SortedDescendingCellStyle BackColor="#E5E5E5" />
         <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
 </td>
                </tr>
               
            </table>
        <br/>
          <asp:Label ID="Label2"  Width="100%" runat="server" CssClass="playlst" Text=" "></asp:Label>   
        <asp:Label ID="Label5" Width="100%"  runat="server" Text=" " CssClass="oops"></asp:Label>
   
        
    
        
     <asp:GridView ID="GridView4" CssClass="grid4" Width="50%" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView_playsong_SelectedIndexChanged" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateSelectButton="True">
         <FooterStyle BackColor="White" ForeColor="#333333" />
         
<Columns>
<asp:BoundField HeaderText = "songname" DataField="songname" />
</Columns>
<HeaderStyle CssClass="headerstyle" BackColor="#336666" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="White" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F7F7F7" />
         <SortedAscendingHeaderStyle BackColor="#487575" />
         <SortedDescendingCellStyle BackColor="#E5E5E5" />
         <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
        <br/><br/>

          <cc1:Media_Player_Control ID="Media_Player_Control1" runat="server" Height="45px" Width="90%" CssClass="player" />
        
    </form>
</body>
</html>

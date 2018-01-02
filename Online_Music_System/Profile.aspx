<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="OMS.Profile" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="css" href="profile.css"/>   
    <title></title>
     <style type="text/css">
        body {
    background-image:url("4.jpg");
    background-repeat: no-repeat;
    background-size:cover;
    background-attachment: fixed;
}

              

       .dropbtn{
           margin-top:13px;
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
.photo{
    margin-top:100px;
    margin-left:40px;
    border-color:#022830;
    border-radius:2px 3px;
}
.lbl{
    margin-left:50px;
    margin-top:60px;
    font-size:35px;
    font-family:'Baskerville Old Face';
    
    
}
.btn{
    width: 20%;
    padding: 8px 5px;
    margin-left:40px;
    /* Styles */
    background: linear-gradient(rgba(85, 41, 12, 0.70), rgba(53, 23, 4, 0.70));    
    border-radius: 5px;
    border: 1px solid #4e3043;
    box-shadow: 
    	inset 0 1px rgba(246, 188, 166, 0.40), 
    	0 2px 1px rgba(0,0,0,0.1);
    cursor: pointer;
    transition: all 0.3s ease-out;

    /* Font styles */
    color: white;
    text-shadow: 0 1px 0 rgba(0,0,0,0.3);
    font-size: 16px;
    font-weight: bold;
    font-family: 'Raleway', 'Lato', Arial, sans-serif;
}

.btn:hover {
   box-shadow: 
        inset 0 1px rgba(255,255,255,0.2), 
        inset 0 20px 30px rgba(155, 84, 38, 0.70);
   }

.btn1{
    
    padding: 8px 5px;
    margin-left:20px;
    /* Styles */
    background: linear-gradient(rgba(85, 41, 12, 0.70), rgba(53, 23, 4, 0.70));    
    border-radius: 5px;
    border: 1px solid #4e3043;
    box-shadow: 
    	inset 0 1px rgba(246, 188, 166, 0.40), 
    	0 2px 1px rgba(0,0,0,0.1);
    cursor: pointer;
    transition: all 0.3s ease-out;

    /* Font styles */
    color: white;
    text-shadow: 0 1px 0 rgba(0,0,0,0.3);
    font-size: 16px;
    font-weight: bold;
    font-family: 'Raleway', 'Lato', Arial, sans-serif;
}

.btn1:hover {
   box-shadow: 
        inset 0 1px rgba(255,255,255,0.2), 
        inset 0 20px 30px rgba(155, 84, 38, 0.70);
   }

.input{
    width: 30%;
    padding: 8px 4px 8px 10px;
    

    /* Styles */
    border: 1px solid #4e3043; /* Fallback */
    border: 1px solid rgba(78,48,67, 0.8);
    background: rgba(0,0,0,0.30);
    border-radius: 2px;
    box-shadow: 
        0 1px 0 rgba(255,255,255,0.2), 
        inset 0 1px 1px rgba(0,0,0,0.1);
    -webkit-transition: all 0.3s ease-out;
    -moz-transition: all 0.3s ease-out;
    -ms-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
    transition: all 0.3s ease-out;

    /* Font styles */
     font-family: 'Montserrat', sans-serif;
    color: #fff;
    font-size: 13px;
}
.input:hover{
    border-color: #333;
}

.playlist{
    font-family:Aller;
    font-size:20px;
   
}
.playlist:hover{
     background-color:rgba(0,0,0,0.3);
     cursor:pointer;
}
.playlbl{
    margin-left:60px;
    font-size:35px;
    font-family:'Cheddar Jack';
}
.playlst{
    margin-left:480px;
    font-size:38px;
    font-family:'Cheddar Jack';
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
       
         .dropdown{
           margin-left:10px;

       }

           .search{
          
          margin-top:13px;
       }

   .homebtn{
           margin-left:90px;
           
       }
         .homediv{
             width:20%;
         }
      
         .grid1{
             margin-left:530px;
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

         
            <br />
            <table style="width: 50%;">
                <tr>
                    <td class="auto-style1"> <asp:Image ID="Image1" runat="server" Height="154px" Width="150px" CssClass="photo" /> </td>
                    <td>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="name" runat="server" Text="Label" CssClass="lbl"></asp:Label>
                        <br/><asp:Label ID="uname" runat="server" Text="Label" CssClass="lbl"></asp:Label>
                        <br/><asp:Label ID="email" runat="server" Text="Label" CssClass="lbl"></asp:Label>
                    </td>
                   
                </tr>
               
            </table>
             <br />
            <br />
             <asp:Label ID="Label1" runat="server" CssClass="playlbl" Text="Create a new playlist.."></asp:Label>
            <br />
            <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input" >
                      </asp:TextBox>
            
            <asp:Button ID="Button1" runat="server" Text="Create Playlist"  CssClass="btn1" OnClick="Button1_Click1"/>
             <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Playlistname should be greater than 5 charachters or The name already exists " OnServerValidate="CustomValidator_ServerValidate" ControlToValidate="TextBox1" ></asp:CustomValidator>
            <br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
               <asp:Label ID="Label2" runat="server" CssClass="playlst" Text="Your Created playlists"></asp:Label>
        <br/><br/>
        <asp:GridView ID="GridView1" Width="17%" CssClass="grid1" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle ForeColor="#333333" BackColor="White" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />

        </asp:GridView> 
             <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>

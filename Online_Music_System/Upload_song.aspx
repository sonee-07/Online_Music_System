<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload_song.aspx.cs" Inherits="Online_Music_System.Upload_song" %>

<%@ Register Assembly="Media-Player-ASP.NET-Control" Namespace="Media_Player_ASP.NET_Control" TagPrefix="cc1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style>
        body {
            background-image: url("12.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
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
           /margin-left:988px;
           margin-left:1001px;
          
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
       


        .input{
    width:40%;
    padding: 8px 4px 8px 10px;
   
   
    

    /* Styles */
   border-color:white;
   border-width:2px;
  
    background: rgba(0,0,0,0.50);
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

    .input:hover {
        border-color: #333;
    }
    
    .btn{
    width: 30%;
    padding: 8px 5px;
    margin-left:200px;
    /* Styles */
    
    background: linear-gradient(rgba(21, 164, 222, 0.70), rgba(21, 164, 222, 0.70));    
    border-radius: 5px;
    border: 1px solid rgba(6, 75, 103, 0.70);
    box-shadow: 
    	inset 0 1px rgba(177, 213, 255, 0.90), 
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
   /*box-shadow: 
        
        inset 0 1px rgba(255,255,255,0.5), 
       	inset 0 20px rgba(177, 213, 255, 0.40), 
        inset 0 1px rgba(255,255,255,0.5), 
        inset 0 20px 30px rgba(155, 84, 38, 0.50); */
       
        background: linear-gradient(rgba(21, 164, 222, 0.70), rgba(21, 164, 222, 0.70));    
   }
    .radio{
        margin-left:50px;
    }
        /*from here*/
       .dropdown{
           margin-left:10px;

       }
     .lbl{
         color:white;
         font-family:'ADAM.CG PRO';
         font-size:20px;
         margin-left:40px;
         
          }
       
     .search{
          
          margin-top:13px;
       }

        .player{
            margin-left:100px;
        }

        .grid{
            margin-left:490px;
        }
         .homebtn{
           margin-left:90px;
           
       }
         .homediv{
             width:20%;
         }
         .music{
             margin-top:-1px;
         }

         .upload{
              width: 550px;
             height:210px;
            margin-top:80px;
            margin-left:30px;
             position: relative;
    
              background: rgba(0,0,0,0.80);
              /* Styles */
    border-radius: 1px;
    box-shadow: 0 0 2px rgba(0,0,0,0.1), 0 3px 2px rgba(0,0,0,0.1);
         }
         .lbl1{
             color:white;
         }
      
        </style>
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <br/>
         <div class="title">
             &nbsp;&nbsp;
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


     <div>
       <div class="upload">
         <br />
        <asp:Label ID="Label2" runat="server" Text="Enter Song name" CssClass="lbl"></asp:Label>
           &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
           <br /><br />
         <asp:Label ID="Label3" runat="server" Text="Enter Tag" CssClass="lbl"></asp:Label>
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
         <asp:TextBox ID="TextBox1" runat="server" CssClass="input"></asp:TextBox>
           <br />
        <p>
            <br/>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn"  Text="Upload" />
        </p>
         &nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label4" runat="server" Text=" " CssClass="lbl1"></asp:Label>
        </div>
         <br/>
         <asp:GridView ID="GridView1" CssClass="grid" runat="server" AutoGenerateSelectButton="True"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateDeleteButton="True" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="songname">
             <FooterStyle BackColor="White" ForeColor="#333333" />
             <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="White" ForeColor="#333333" />
             <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#487575" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#275353" />
         </asp:GridView>
         
        </div>
        <br/>
        <cc1:Media_Player_Control ID="Media_Player_Control1" runat="server" Font-Names="Aaargh" CssClass="player"  Height="45px" Width="90%" />

    </form>
</body>
</html>

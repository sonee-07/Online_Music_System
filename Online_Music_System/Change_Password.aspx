<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="Online_Music_System.Change_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
         .form1{
             width: 400px;
             height:350px;
             margin: 60px auto 20px;
             position: relative;
    
             margin-left:750px;
             margin-top:-370px;
              background: rgba(0,0,0,0.80);
              /* Styles */
    border-radius: 1px;
    box-shadow: 0 0 2px rgba(0,0,0,0.1), 0 3px 2px rgba(0,0,0,0.1);
         }

         .form2{
             width: 400px;
             height:350px;
             margin: 60px auto 20px;
             position: relative;
    
             margin-left:250px;
             margin-top:150px;
              background: rgba(0,0,0,0.80);
              /* Styles */
    border-radius: 1px;
    box-shadow: 0 0 2px rgba(0,0,0,0.1), 0 3px 2px rgba(0,0,0,0.1);
         }


         body {
             background-image: url("10.jpg");
             background-repeat: no-repeat;
             background-size: cover;
             background-attachment: fixed;
         }
         .lbl{
         color:white;
         font-family:'ADAM.CG PRO';
         font-size:20px;
         margin-left:70px;
         
          }

         .lbl1{
         color:white;
         font-family:'ADAM.CG PRO';
         font-size:18px;
         margin-left:30px;
         
          }
         
         .input{
    width: 70%;
    padding: 8px 4px 8px 10px;
    margin-left:50px;
   
    

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

    .input:hover {
        border-color: #333;
    }
    .btn{
    width: 40%;
    padding: 8px 5px;
    margin-left:100px;
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
       .dropdown{
           margin-left:10px;

       }
       .dropdown-content a:hover{
           background-color:#f1f1f1
       }

       .dropdown:hover .dropdown-content{
           display:block;
       }
          
       .dropdown:hover .dropbtn{
           
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
           margin-left:1001px;
          
       }
       

         </style>
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
            <div class="form2">
                <br />
                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Edit Name:" CssClass="lbl"></asp:Label>
                <br/><br/>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="input"></asp:TextBox>
                <br/>
            <asp:CustomValidator ID="CustomValidator2" runat="server" ForeColor="White" ErrorMessage="Invalid Name" OnServerValidate="CustomValidator2_ServerValidate" ControlToValidate="TextBox3"></asp:CustomValidator>
           
                <br/><br/>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Change Profile pic:" CssClass="lbl"></asp:Label>
                <br/><br/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br/><br/><br/>
                <asp:Button ID="Button2" runat="server" Text="Edit profile" OnClick="Button2_Click" CssClass="btn"/>    

                <br />
                <asp:Label ID="Label6" ForeColor="White" runat="server"></asp:Label>

            </div>
            <div class="form1">
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Enter Old Password:" CssClass="lbl"></asp:Label><br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="input"></asp:TextBox>

                <p>
                    <asp:Label ID="Label1" runat="server" Text="Enter New Password:" CssClass="lbl"></asp:Label><br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" CssClass="input"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ForeColor="White" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox2"></asp:CustomValidator>
                </p>
                <p>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn" OnClick="Button1_Click" />
                </p>
                <asp:Label ID="Label3" runat="server" Text=" " CssClass="lbl1"></asp:Label>

            </div>
        </div>
    </form>
</body>
</html>

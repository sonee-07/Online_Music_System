<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forget_Password.aspx.cs" Inherits="OMS.Forget_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
    background-image:url("1.jpg");
    background-repeat: no-repeat;
    background-size:cover;
    background-attachment: fixed;
}
.input{
    width: 20%;
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
.input:hover {
        border-color: #333;
    }

.btn{
    width: 10%;
    padding: 8px 5px;
    margin-left:625px;
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
        inset 0 1px rgba(255,255,255,0.5), 
        inset 0 20px 30px rgba(155, 84, 38, 0.50);
   }

.lbl{
    color:white;
    font-family:'ADAM.CG PRO';
    font-size:20px;
}
        </style>
     <link rel="stylesheet" type="css" href="Forget_password.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Enter Your Username to change the Password" CssClass="lbl" style="margin-left: 450px"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Label ID="Label3" runat="server" Text="Username:" style="margin-left: 550px" CssClass="lbl"></asp:Label>
        <br />
        <p>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 550px" CssClass="input"></asp:TextBox>
            <asp:Button ID="Button2" CssClass="btn" runat="server" OnClick="Button2_Click" style="margin-left: 37px" Text="Get Question" />
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Question:" style="margin-left: 550px" CssClass="lbl"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text=" "  Font-Names="Alegreya" Font-Size="20px" ForeColor="White"></asp:Label>
            <!--<asp:Label ID="Label5" runat="server" Text="Label" Font-Names="Alegreya" Font-Size="20px" ForeColor="White"></asp:Label>-->
        </p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"  style="margin-left: 550px" CssClass="input"></asp:TextBox>
        </p>
        
         <p>
         <asp:Label ID="Label8" runat="server" ForeColor="White" Text="Enter New Password:" CssClass="lbl" style="margin-left: 550px"></asp:Label>
        <br/><br/>
             <asp:TextBox ID="TextBox3" runat="server" CssClass="input" style="margin-left: 550px" TextMode="Password"></asp:TextBox>
         </p>
        <asp:CustomValidator ID="CustomValidator1" runat="server" style="margin-left: 500px" ErrorMessage="Password must contain Alphabets and between length 5-10" ControlToValidate="TextBox3" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>    
       <br/>
         <asp:Button ID="Button1" runat="server" Text="Enter" CssClass="btn" OnClick="Button1_Click" />
       
        <p>
            &nbsp;</p>
        <asp:Label ID="Label9" runat="server" ForeColor="White" Text=" " CssClass="lbl" style="margin-left: 520px"></asp:Label>
    </form>
    </body>
</html>

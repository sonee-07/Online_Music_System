<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Online_Music_System.Register"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <link rel="stylesheet" type="css" href="Register_css.css"/>
    <style>
        body {
    background-image:url(mic.jpg);
    background-repeat: no-repeat;
    background-size:cover;
    background-attachment: fixed;
}
form {
    /* Size and position */
    width: 666px;
    padding: 10px;
    position: relative;

    /* Font styles */
    font-family: 'Raleway', 'Lato', Arial, sans-serif;
    color: white;
    text-shadow: 0 2px 1px rgba(0,0,0,0.3);
    margin-left:100px;
            top: 0px;
            left: 0px;
            margin-right: auto;
            margin-top: 20px;
            margin-bottom: 30px;
        }
.input{
    width: 70%;
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

#boxshadow {
    position: relative;
    -moz-box-shadow: 1px 2px 4px rgba(0, 0, 0,0.5);
    -webkit-box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
    box-shadow: 1px 2px 4px rgba(0, 0, 0, .8);
    padding: 10px;
    width:300px;
    margin-left:200px;
    
    text-align:center;
    font-family:Aaargh;
    font-size:50px;
    text-align:center;
    font-weight:500;
    color:white;
    text-shadow: 2px 2px 5px #000000;
}
.button{
     /* Size and position */
    width: 50%;
    padding: 8px 5px;
    margin-left:75px;
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
.button:hover{
    box-shadow: 
        inset 0 1px rgba(255,255,255,0.2), 
        inset 0 20px 30px rgba(155, 84, 38, 0.70);
}
.lbl{
    
    font-family:Aller;
    
    font-size:25px;
}
.drop {
    width:130px;
    height:30px;
    overflow:hidden;
    /*border:1px solid rgba(246, 188, 166, 0.40);*/
   
    background-size:10px;
    color:white;
    
}
.drop:hover{
    border-color: #333;
}
        </style>
    <title>Register Yourself</title>
</head>
<body>
    <br/><br/>
    
    <div id="boxshadow">
     Sign Up!
   </div>
    

    <form id="form1" runat="server">
    
        <p>       
        <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="lbl"></asp:Label>
            <br/>
        <asp:TextBox ID="TextboxName" CssClass="input" runat="server"></asp:TextBox>
            <br/>
             <asp:CustomValidator ID="CustomValidator5" runat="server" ForeColor="White" ErrorMessage="Invalid Name" OnServerValidate="CustomValidator5_ServerValidate" ControlToValidate="TextboxName"></asp:CustomValidator>
            <br/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a valid name*" ControlToValidate="TextBoxName"></asp:RequiredFieldValidator> 
        </p>
    
    
        <p>
            <asp:Label ID="Label2" runat="server" Text="Username:" CssClass="lbl"></asp:Label>
            <br/>
            <asp:TextBox ID="TextboxUsername" CssClass="input" runat="server"></asp:TextBox>
            <br/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a valid username*" ControlToValidate="TextBoxUsername"></asp:RequiredFieldValidator>
            <br/>
            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Username must contain Alphabets and between length 5-10" OnServerValidate="CustomValidator2_ServerValidate" ControlToValidate="TextBoxUsername" ></asp:CustomValidator>
            <br/> 
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage=" This username already exists" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBoxUsername"></asp:CustomValidator>
           
        </p>
        <p>
        <asp:Label ID="Label3" runat="server" Text="Password:" CssClass="lbl"></asp:Label>
            <br/>
        <asp:TextBox ID="TextboxPassword" CssClass="input" runat="server" TextMode="Password" ViewStateMode="Enabled"></asp:TextBox>
            <br/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a valid password*" ControlToValidate="TextBoxPassword"></asp:RequiredFieldValidator>
            <br/>
            <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Password must contain Alphabets and between length 5-10*" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Confirm Password:" CssClass="lbl"></asp:Label>
            <br/>
            <asp:TextBox ID="TextBoxPassword1" CssClass="input" runat="server" TextMode="Password"></asp:TextBox>
            <br/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter a valid password*" ControlToValidate="TextBoxPassword1"></asp:RequiredFieldValidator>
           <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password don't match." ControlToValidate="TextBoxPassword1" ControlToCompare="TextBoxPassword"></asp:CompareValidator>
        </p>
        <p>
        <asp:Label ID="Label5" runat="server" Text="Email:" CssClass="lbl"></asp:Label>
            <br/>
        <asp:TextBox ID="TextBoxEmail" CssClass="input" runat="server"></asp:TextBox>
            <br/>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Security Question:" CssClass="lbl"></asp:Label>
            
           &nbsp; <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drop" BackColor="#F6F1DB" ForeColor="#7D6754">
                <asp:ListItem Value="1">Favourite Color</asp:ListItem>
                <asp:ListItem Value="2">Your Pet&#39;s Name</asp:ListItem>
            </asp:DropDownList>
               
            <asp:TextBox ID="TextBoxSecurityQue" runat="server" CssClass="input"></asp:TextBox>
        </p>
        <asp:Label ID="Label6" runat="server" Text="Profile Picture:" CssClass="lbl"></asp:Label>
        
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br/>
         <asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage=" Only a .jpg,.png or .jpeg is allowed*" OnServerValidate="CustomValidator4_ServerValidate" ControlToValidate="FileUpload1"></asp:CustomValidator>
           
        <p>
        <asp:Button ID="Button1" CssClass="button" runat="server" Text="Get Started" OnClick="Button1_Click"/>
        </p>
    </form>
</body>
</html>

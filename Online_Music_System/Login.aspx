<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OMS.Login"  %>
 <% HttpContext.Current.Response.Cache.SetAllowResponseInBrowserHistory(false);
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
    Response.Cache.AppendCacheExtension("must-revalidate,proxy-revalidate,post-check=0,pre-check=0"); 
    %>
    <script lang="javascript" type="text/javascript">
        window.onbeforeunload=function(){}</script>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body{
    background-image:url(sp1.jpg);
}
.form1 {
    /* Size and position */
    width: 400px;
    height:370px;
    margin: 60px auto 20px;
    position: relative;
    background: rgba(0,0,0,0.80);
    /* Styles */
    border-radius: 1px;
    box-shadow: 0 0 2px rgba(0,0,0,0.1), 0 3px 2px rgba(0,0,0,0.1);
}
.form1 p {
    width: 70%;
    float: left;
    border-radius: 5px 0 0 5px;
    
}

.input{
    width: 70%;
    padding: 8px 4px 8px 10px;
    margin-left:50px;

    /* Styles */
    border: 1px solid #4e3043; /* Fallback */
    border: 1px solid rgba(78,48,67, 0.8);
    background: rgba(0,0,0,0.60);
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

.lbl{
    margin-left:130px;
    
    font-family:'Kalenderblatt Grotesk';
    font-size:25px;
    color:white;
}
.button{
     /* Size and position */
    width: 50%;
    padding: 8px 5px;
    margin-left:100px;
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
        inset 0 20px 30px rgba(85, 41, 12, 0.50);
}

#boxshadow {
    position: relative;
    -moz-box-shadow: 1px 2px 4px rgba(0, 0, 0,0.5);
    -webkit-box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
    box-shadow: 1px 2px 4px rgba(0, 0, 0, .8);
    padding: 10px;
    width:300px;
    margin-left:520px;
    
    text-align:center;
    font-family:Aaargh;
    font-size:50px;
    text-align:center;
    font-weight:500;
    color:white;
    text-shadow: 2px 2px 5px #000000;
}
.check{
    font-family:Alegreya;
    margin-left:100px;
}

        </style>
    <link rel="stylesheet" type="css" href="Login.css"/>
    <title>Login</title>
</head>
<body>
  <br/><br/><br/><br/>
     <div id="boxshadow">
     Sign In!
   </div>
    <br/><br/>
    <form id="form1" class="form1" runat="server">
       
        

        <br/><br/><br/>

        <div>
        <asp:Login ID="Login1" runat="server" TitleText="" >
            <LabelStyle CssClass="lbl" />
            <LayoutTemplate>
                                    
                                        <asp:Label ID="UserNameLabel" CssClass="lbl" runat="server" AssociatedControlID="UserName">UserName:</asp:Label>
                                        <asp:TextBox ID="UserName" runat="server" CssClass="input"></asp:TextBox>
                                   
                                        <asp:Label ID="PasswordLabel" CssClass="lbl" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                        <asp:TextBox ID="Password" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1" ForeColor="White">*</asp:RequiredFieldValidator>
                                        <br/><br/>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="FailureText" runat="server" Text=" " ForeColor="White" ></asp:Label>
                                       
                                        <br/><br/>
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" CssClass="button" Text="Log In" ValidationGroup="Login1" OnClick="LoginButton_Click" />
                                   
            </LayoutTemplate>
            <LoginButtonStyle CssClass="button" />
            <TextBoxStyle CssClass="input" />
        </asp:Login>

             <br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Forget_Password.aspx" Font-Names="arial">Forgot Password?</asp:HyperLink>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/Register.aspx" Font-Names="arial">Not Registered yet?</asp:HyperLink>

    </div>
    
        

       
    </form>
</body>
</html>

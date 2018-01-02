<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit Profile.aspx.cs" Inherits="Online_Music_System.Edit_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Text="Edit Name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
        <p>
        <asp:Label ID="Label2" runat="server" Text="Change Profile pic:"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        </p>
        <p>
        <asp:Button ID="Button1" runat="server" Text="Change profile" OnClick="Button1_Click"/>    
        </p>
    </form>
</body>
</html>

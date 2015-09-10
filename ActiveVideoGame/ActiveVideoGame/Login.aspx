<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ActiveVideoGame.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div><p>Please enter your user ID and your password.</p>

User_ID: <asp:TextBox ID="LoginTextBox" runat="server" style="text-align:center"></asp:TextBox><br />
Password: <asp:TextBox ID="PasswordTextBox" runat="server" style="text-align:center"></asp:TextBox><br />
<asp:LinkButton ID="LoginLinkButton" runat="server" PostBackUrl="~/MainMenu.aspx">Login</asp:LinkButton>
    </div>
    </form>
</body>
</html>

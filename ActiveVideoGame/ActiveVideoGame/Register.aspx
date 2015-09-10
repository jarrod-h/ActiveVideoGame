<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ActiveVideoGame.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div><p>Welcome to the register. Please fill up the form to set up an AVG account.</p>
        FirstName:<asp:TextBox ID="FNameTextBox" runat="server" style="text-align:center"></asp:TextBox><br />
        LastName:<asp:TextBox ID="LNameTextBox" runat="server" style="text-align:center"></asp:TextBox><br />
        Email:<asp:TextBox ID="EmailTextBox" runat="server" style="text-align:center"></asp:TextBox><br />
        ID:<asp:TextBox ID="IDTextBox" runat="server" style="text-align:center"></asp:TextBox><br />
        Password:<asp:TextBox ID="PasswordTextBox" runat="server" style="text-align:center"></asp:TextBox><br />
  
<asp:RadioButton ID="RadioButton1" runat="server" />
    <asp:LinkButton ID="RegisterLinkButton" runat="server" PostBackUrl="~/CharacterSelection.aspx">Register</asp:LinkButton>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="ActiveVideoGame.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div><p>Welcome on AVG website ! PLease login or register if you want to suscribe.</p>
        <asp:LinkButton ID="LinkButtonLogin" runat="server" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
        <asp:LinkButton ID="LinkButtonRegister" runat="server" PostBackUrl="~/Register.aspx">Register</asp:LinkButton>
    </div>
    </form>
</body>
</html>

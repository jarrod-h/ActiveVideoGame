﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CharacterSelection.aspx.cs" Inherits="ActiveVideoGame.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="selection">
        <p>Welcome to the Character Selection page. Please select one of the 12 characters available.</p>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Barbario</asp:ListItem>
            <asp:ListItem>Bowser</asp:ListItem>
            <asp:ListItem>Leah</asp:ListItem>
            <asp:ListItem>Shaman</asp:ListItem>
            <asp:ListItem>Shavata</asp:ListItem>
            <asp:ListItem>Cable</asp:ListItem>
            <asp:ListItem>Bulgarov</asp:ListItem>
            <asp:ListItem>Thanos</asp:ListItem>
            <asp:ListItem>Harley</asp:ListItem>
            <asp:ListItem>Leviatron</asp:ListItem>
            <asp:ListItem>Henchman</asp:ListItem>
        </asp:DropDownList>
        <asp:Image ID="Barbario" runat="server" ImageUrl="Images\barbario.jpg"/><br />
        <asp:Image ID="Bowser" runat="server" ImageUrl="Images\bowser.jpg"/><br />
        <asp:Image ID="Leah" runat="server" ImageUrl="Images\leah.jpg"/><br />
        <asp:Image ID="Shaman" runat="server" ImageUrl="Images\shaman.jpg"/><br />
        <asp:Image ID="Shavata" runat="server" ImageUrl="Images\shavata.jpg"/><br />
        <asp:Image ID="Cable" runat="server" ImageUrl="Images\cable.jpg"/><br />
        <asp:Image ID="Bulgarov" runat="server" ImageUrl="Images\bulgarov.jpg"/><br />
        <asp:Image ID="Thanos" runat="server" ImageUrl="Images\thanos.jpg"/><br />
        <asp:Image ID="Harley" runat="server" ImageUrl="Images\harley.jpg"/><br />
        <asp:Image ID="Leviatron" runat="server" ImageUrl="Images\leviatron.jpg"/><br />
        <asp:Image ID="Henchman" runat="server" ImageUrl="henchman.jpg"/>
    </div>  
    </form>
</body>
</html>

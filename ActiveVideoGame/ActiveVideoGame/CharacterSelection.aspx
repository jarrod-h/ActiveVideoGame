<%@ Page Title="Character Selection" Language="C#" AutoEventWireup="true" CodeBehind="CharacterSelection.aspx.cs" Inherits="ActiveVideoGame.WebForm2" MasterPageFile="Master.Master" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/characterselection.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <h1>Character Selection</h1>
            <form action="MainMenu.aspx" id="characterSelection" runat="server">
                <div class="selection">
                    <p>Welcome to the Character Selection page. Please select one of the 12 characters available.</p>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Bowser</asp:ListItem>
                        <asp:ListItem>Barbario</asp:ListItem>
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
                    <asp:Image ID="Bowser" runat="server" ImageUrl="Images\bowser.jpg" /><br />
                    <asp:Button ID="btnChooseChar" Text="Choose" runat="server" />
                    <%--<asp:Image ID="Barbario" runat="server" ImageUrl="Images\barbario.jpg" /><br />
            <asp:Image ID="Leah" runat="server" ImageUrl="Images\leah.jpg" /><br />
            <asp:Image ID="Shaman" runat="server" ImageUrl="Images\shaman.jpg" /><br />
            <asp:Image ID="Shavata" runat="server" ImageUrl="Images\shavata.jpg" /><br />
            <asp:Image ID="Cable" runat="server" ImageUrl="Images\cable.jpg" /><br />
            <asp:Image ID="Bulgarov" runat="server" ImageUrl="Images\bulgarov.jpg" /><br />
            <asp:Image ID="Thanos" runat="server" ImageUrl="Images\thanos.jpg" /><br />
            <asp:Image ID="Harley" runat="server" ImageUrl="Images\harley.jpg" /><br />
            <asp:Image ID="Leviatron" runat="server" ImageUrl="Images\leviatron.jpg" /><br />
            <asp:Image ID="Henchman" runat="server" ImageUrl="henchman.jpg" />
        </div>--%>
            </form>
    </div>
</asp:Content>

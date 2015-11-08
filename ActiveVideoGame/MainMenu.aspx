<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 29/08/2015
    Description: This is the aspx file which handles the main menu content and displays 
     the 'hub-like' page from which all other game pages are accessible.--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="ActiveVideoGame.MainMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/mainmenu.css" />
</asp:Content>
<%--ASP CONTENT TO GO HERE, "Welcome [NAME] will be displayed alongside the users points balance--%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="MainMenuScreen">
        <%--LEFT HAND SIDE NAVIGATIONAL MENU--%>
        <div id="MainMenu">
            <asp:HyperLink ID="characterManagement" runat="server" NavigateUrl="/CharacterManagement.aspx">Character Management</asp:HyperLink>

            <asp:HyperLink ID="challengePage" runat="server" NavigateUrl="/ChallengePage.aspx">Challenge</asp:HyperLink>

            <asp:HyperLink ID="fightSummary" runat="server" NavigateUrl="/FightSummary.aspx">Battle History</asp:HyperLink>

            <asp:HyperLink ID="exerciseUpload" runat="server" NavigateUrl="/ExerciseUpload.aspx">Exercise Upload</asp:HyperLink>

            <asp:HyperLink ID="hof" runat="server" NavigateUrl="/Hof.aspx">Hall of Fame</asp:HyperLink>

            <asp:HyperLink ID="viewProfile" runat="server" NavigateUrl="/Profile.aspx">My Profile</asp:HyperLink>
        </div>
        <div id="content_window">
            <form id="user_monsters" runat="server">

                <%--RIGHT HAND SIDE CONTENT WINDOW--%>
                <%--This dynamic content window will display the users characters alongside their name, level and stats--%>

                <div id="monsterNumbers">
                    <asp:LinkButton ID="Monster1" runat="server" OnClick="Monster1_Click">1</asp:LinkButton>
                    <asp:LinkButton ID="Monster2" runat="server" OnClick="Monster2_Click">2</asp:LinkButton>
                    <asp:LinkButton ID="Monster3" runat="server" OnClick="Monster3_Click">3</asp:LinkButton>
                    <asp:LinkButton ID="Monster4" runat="server" OnClick="Monster4_Click">4</asp:LinkButton>
                </div>
                <div>
                    <p>Selected monster: </p>
                </div>
                <div class="monsterItem" id="monsterItem1">
                    <div class="image">
                        <asp:Image ID="imgMonsterImage" runat="server" />
                    </div>
                    <div class="stats">
                        <asp:Label ID="lblNumber" runat="server" Text="">Monster Number: </asp:Label>
                        <asp:Label ID="lblMonsterNumber" runat="server" Text=""> of 4</asp:Label><br />
                        <asp:Label ID="lblName" runat="server" Text="">Name: </asp:Label>
                        <asp:Label ID="lblMonsterName" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblElement" runat="server" Text="">Element: </asp:Label>
                        <asp:Label ID="lblMonsterElement" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblLevel" runat="server" Text="">Level: </asp:Label>
                        <asp:Label ID="lblMonsterLevel" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblStep" runat="server" Text="">Step: </asp:Label>
                        <asp:Label ID="lblMonsterStep" runat="server" Text=""></asp:Label><br />
                    </div>
                </div>
            </form>
        </div>
    </div>
</asp:Content>



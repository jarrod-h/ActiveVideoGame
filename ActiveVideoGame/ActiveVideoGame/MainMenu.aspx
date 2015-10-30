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
            <ul>
                <li>
                    <asp:HyperLink ID="characterSelection" runat="server" NavigateUrl="/CharacterSelection.aspx">Character Selection</asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="characterManagement" runat="server" NavigateUrl="/CharacterManagement.aspx">Character Management</asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="challengePage" runat="server" NavigateUrl="/ChallengePage.aspx">Challenge</asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="fightSummary" runat="server" NavigateUrl="/FightSummary.aspx">Fight Summary</asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="exerciseUpload" runat="server" NavigateUrl="/ExerciseUpload.aspx">Exercise Upload</asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="exerciseManagement" runat="server" NavigateUrl="/ExerciseManagement.aspx">Exercise Management</asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="hof" runat="server" NavigateUrl="/Hof.aspx">Hall of Fame</asp:HyperLink></li>
            </ul>
        </div>
        <%--RIGHT HAND SIDE CONTENT WINDOW--%>
        <%--This dynamic content window will display the users characters alongside their name, level and stats--%>
        <div id="content_window">
            <div id="user_monsters">
                <div class="image">
                    <img src="Images/bowser.jpg" /></div>
                <div class="stats">
                    <p>Name: </p>
                    <p>Level: </p>
                    <p>Stats: </p>
                </div>
                <div class="image">
                    <img src="Images/bowser.jpg" /></div>
                <div class="stats">
                    <p>Name: </p>
                    <p>Level: </p>
                    <p>Stats: </p>
                </div>
                <div class="image">
                    <img src="Images/bowser.jpg" /></div>
                <div class="stats">
                    <p>Name: </p>
                    <p>Level: </p>
                    <p>Stats: </p>
                </div>
                <div class="image">
                    <img src="Images/bowser.jpg" /></div>
                <div class="stats">
                    <p>Name: </p>
                    <p>Level: </p>
                    <p>Stats: </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



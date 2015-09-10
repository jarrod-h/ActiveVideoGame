<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="ActiveVideoGame.MainMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/main.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="MainMenu">
        <div class="navMenu">
            <ul>
                <li>
                    <asp:HyperLink ID="characterSelection" runat="server" NavigateUrl="/CharacterSelection.aspx">Character Selection</asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="characterManagement" runat="server" NavigateUrl="/CharacterManagement.aspx">Character Managemet</asp:HyperLink></li>
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
        <div class="charDisplay">
        </div>
    </div>
</asp:Content>



<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 10/09/2015
    Description: This is the welcome page which displays what's happening in the BATTLE community 
     such as tips for play and recent competition winners.--%>

<%@ Page Title="Welcome" Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="ActiveVideoGame.WebForm1" MasterPageFile="Master.Master" ClientIDMode="Inherit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/welcome.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="content_window">
        <div id="content">
            <h1>Welcome to the Battle</h1>
            <p>Welcome to AVG website! PLease login or register to battle!.</p>
            <%--NEWS ITEMS WILL GO BELOW--%>
            <div class="welcome_content">
                <h2>Coming Soon</h2>
                <p>Battling Elemental Titans Through Exercise Routines (B.E.T.T.E.R.) is coming soon!</p>
            </div>
        </div>
        
    </div>

</asp:Content>

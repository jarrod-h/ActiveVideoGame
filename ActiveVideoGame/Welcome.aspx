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
            <p>Welcome to AVG website! Please login or register to battle!.</p>
            <%--NEWS ITEMS WILL GO BELOW--%>
            <div class="welcome_content">
                <h2>Coming Soon</h2>
                <p>Battling Elemental Titans Through Exercise Routines (B.E.T.T.E.R.) is coming soon!</p>
                <h2>What we're about</h2>
                <p>Active Video Games have developed Battling Elemental Titans Through Exercise Routines (B.E.T.T.E.R.). <%-- 
                    --%>Combating obesity through exercise-incentive based gameplay AVG is launching an assault on obesity. <%-- 
                    --%>Kids can easily sign up with their parent approval. Parents monitor their kids activity and award them points. <%-- 
                    --%>These points can be used to upgrade their monster and battle it out in the online arena.</p>
                <h2>Hall Of Fame</h2>
                <%-- HALL OF FAME NEEDS TO BE DISPLAYED ON THIS PAGE--%>
            </div>
        </div>
        
    </div>

</asp:Content>

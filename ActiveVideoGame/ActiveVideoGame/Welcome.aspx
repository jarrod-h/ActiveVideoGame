<%@ Page Title="Welcome" Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="ActiveVideoGame.WebForm1" MasterPageFile="Master.Master" ClientIDMode="Inherit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/welcome.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="content_window">
        <div id="content">
            <h1>Welcome to the Battle</h1>
            <p>Welcome to AVG website! PLease login or register to battle!.</p>
            <div class="welcome_content">
                <h2>Coming Soon</h2>
                <p>Battling Elemental Titans Through Exercise Routines (B.E.T.T.E.R.) is coming soon!</p>
            </div>
        </div>
        
    </div>

</asp:Content>

<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 29/08/2015
    Description: This page displays the user's character and the other players character and all associated stats prior to battle.--%>

<%@ Page Title="Fight!" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="FightPage.aspx.cs" Inherits="ActiveVideoGame.FightPage" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/fight.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <h1>Fight Page</h1>
        <asp:Button ID="btnCancelFight" Text="Cancel Fight" runat="server" />
        <asp:Button ID="btnBeginFight" Text="Begin Fight" runat="server" />
    </div>
</asp:Content>

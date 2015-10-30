<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 29/08/2015
    Description: This page displays the outcome of the fight.--%>

<%@ Page Title="Outcome" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="FightOutcome.aspx.cs" Inherits="ActiveVideoGame.FightOutcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/fightoutcome.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <a href="MainMenu.aspx"><h1>Fight Outcome</h1></a>
        <%--DYNAMIC TEXT FIELD HERE WILL DISPLAY OUTCOME OF THE FIGHT "YOU WON/LOST"--%>
    </div>
</asp:Content>

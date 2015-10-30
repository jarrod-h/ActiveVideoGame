<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 10/09/2015
    Description: This page allows the user to select a character and view all the fights and fight outcomes that have occured involving that particular character.--%>

<%@ Page Title="Fight Summary" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="FightSummary.aspx.cs" Inherits="ActiveVideoGame.FightSummary" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/fightsummary.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <h1>Fight Summary</h1>
    </div>
</asp:Content>

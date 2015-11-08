<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 09/09/2015
    Description: This is the page presented to the user upon logout confirming that they have logged out.--%>

<%@ Page Title="Logged out" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="ActiveVideoGame.Logout" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/logout.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <div class="section">
            <div class="row">
                <h1>You have been logged out</h1>
            </div>
            <div class="row">See you soon!</div>
        </div>
    </div>
</asp:Content>

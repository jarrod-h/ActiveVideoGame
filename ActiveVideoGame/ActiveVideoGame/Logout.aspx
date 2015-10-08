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

<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 29/08/2015
    Description: This is the Master file which provides a theme-like template for all other pages.
     it also displays the navigation header and footer.--%>

<%@ Page Title="Character Management" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="CharacterManagement.aspx.cs" Inherits="ActiveVideoGame.CharacterManagement" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/charactermanagement.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <h1>Character Management</h1>

        <div id="user_monsters">
            <div class="image">
                <img src="Images/bowser.jpg" />
            </div>
            <div class="stats">
                <p>Name: </p>
                <p>Element: </p>
                <p>Level: </p>
                <p>Step: </p>
            </div>

        </div>
    </div>
</asp:Content>

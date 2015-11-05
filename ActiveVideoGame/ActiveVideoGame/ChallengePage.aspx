<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 09/10/2015
    Description: This page will display a list of all the users characters (if moe than one exist) and other player characters sorted by 
     compatible rankings from which the user can select. The user then challenges the user to fight if they accept.--%>

<%@ Page Title="Challenge" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="ChallengePage.aspx.cs" Inherits="ActiveVideoGame.ChallengePage" ClientIDMode="Inherit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/challengepage.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <h1>Challenge</h1>
        <form action="FightPage.aspx" runat="server">
            <div id="user_monsters">
                <div class="image"><img src="Images/bowser.jpg" /></div>
                <div class="stats">
                    <p>Name: </p>
                    <p>Level: </p>
                    <p>Stats: </p>
                </div>
                <div class="image"><img src="Images/bowser.jpg" /></div>
                <div class="stats">
                    <p>Name: </p>
                    <p>Level: </p>
                    <p>Stats: </p>
                </div>
                <div class="image"><img src="Images/bowser.jpg" /></div>
                <div class="stats">
                    <p>Name: </p>
                    <p>Level: </p>
                    <p>Stats: </p>
                </div>
                <div class="image"><img src="Images/bowser.jpg" /></div>
                <div class="stats">
                    <p>Name: </p>
                    <p>Level: </p>
                    <p>Stats: </p>
                </div>
            </div>
            <div id="vs_text">
                <h1>vs.</h1>
                <asp:Button ID="btnChallenge" Text="Challenge!" runat="server" />
            </div>
            <div id="other_monsters">
                <div class="image"><img src="Images/bowser.jpg" /></div>
                <div class="stats">
                    <p>Name: </p>
                    <p>Level: </p>
                    <p>Stats: </p>
                </div>
                <div class="image"><img src="Images/bowser.jpg" /></div>
                <div class="stats">
                    <p>Name: </p>
                    <p>Level: </p>
                    <p>Stats: </p>
                </div>
                <div class="image"><img src="Images/bowser.jpg" /></div>
                <div class="stats">
                    <p>Name: </p>
                    <p>Level: </p>
                    <p>Stats: </p>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
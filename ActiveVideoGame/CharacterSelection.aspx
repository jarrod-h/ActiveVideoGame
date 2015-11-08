<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 10/09/2015
    Description: This page is the character selection page from which the user selects a character to create and it's element family.--%>

<%@ Page Title="Character Selection" Language="C#" AutoEventWireup="true" CodeBehind="CharacterSelection.aspx.cs" Inherits="ActiveVideoGame.WebForm2" MasterPageFile="Master.Master" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/characterselection.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <h1>Character Selection</h1>
        <form action="MainMenu.aspx" id="characterSelection" runat="server">
            <div class="selection">
                Welcome to the Character Selection page.
                <%--Drop down list contains all the available characters the user can select--%>
                <div class="row">
                    Select and element: 
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Earth</asp:ListItem>
                        <asp:ListItem>Air</asp:ListItem>
                        <asp:ListItem>Water</asp:ListItem>
                        <asp:ListItem>Fire</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="row">
                    Select one of available characters: 
                    <asp:DropDownList ID="ddlCharacterSelection" runat="server">
                        <asp:ListItem>Bowser</asp:ListItem>
                        <asp:ListItem>Barbario</asp:ListItem>
                        <asp:ListItem>Leah</asp:ListItem>
                        <asp:ListItem>Shaman</asp:ListItem>
                        <asp:ListItem>Shavata</asp:ListItem>
                        <asp:ListItem>Cable</asp:ListItem>
                        <asp:ListItem>Bulgarov</asp:ListItem>
                        <asp:ListItem>Thanos</asp:ListItem>
                        <asp:ListItem>Harley</asp:ListItem>
                        <asp:ListItem>Leviatron</asp:ListItem>
                        <asp:ListItem>Henchman</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="row">
                    <asp:Image ID="Bowser" runat="server" ImageUrl="Images\bowser.jpg" />
                    <%--will display image here of the user's selected character--%>
                </div>
                <asp:Button ID="btnChooseChar" Text="Choose" runat="server" />
            </div>
        </form>
    </div>
</asp:Content>

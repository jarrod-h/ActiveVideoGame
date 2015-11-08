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
        <h1>Character Creation</h1>
        <form runat="server">
            <asp:Label ID="lblMonsterName" runat="server" Text="Monster Name: "></asp:Label>
            <asp:TextBox ID="tbxMonsterName" runat="server"></asp:TextBox>
            <asp:Label ID="lblElement" runat="server" Text="Element Type: "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <asp:Button ID="btnAdd" runat="server" Text="Create" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
        </form>

    </div>
</asp:Content>

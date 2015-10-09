<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 09/10/2015
    Description: This file allows the user to upload their exercises to level up.--%>

<%@ Page Title="Upload Exercise" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="ExerciseUpload.aspx.cs" Inherits="ActiveVideoGame.ExerciseUpload" ClientIDMode="Inherit"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/exerciseupload.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <form id="frmRegister" runat="server">
            <div id="section">
                <h1>Exercise Upload</h1>
            </div>
        </form>
    </div>
</asp:Content>

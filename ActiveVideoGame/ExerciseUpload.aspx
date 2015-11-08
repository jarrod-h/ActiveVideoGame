<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 09/10/2015
    Description: This file allows the user to upload their exercises to level up.--%>

<%@ Page Title="Upload Exercise" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="ExerciseUpload.aspx.cs" Inherits="ActiveVideoGame.ExerciseUpload" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/exerciseupload.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <form id="frmRegister" runat="server">
            <div id="section">
                <h1>Exercise Upload</h1>
                <div class="row">
                    Exercise Points:
                <asp:TextBox Class="txtInput" ID="txtExercisePoints" runat="server" placeholder="Exercise points..."></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvExerciseUploadExercisePoints" runat="server" ControlToValidate="txtExercisePoints" ErrorMessage="Exercise points must be entered." ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
                <div class="row">
                    Parents PIN:
                <asp:TextBox Class="txtInput" ID="txtParentPIN" runat="server" TextMode="password" placeholder="Parents PIN..."></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvExerciseUploadParentsPIN" runat="server" ControlToValidate="txtParentPIN" ErrorMessage="Your parents PIN must be entered." ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
                <asp:Button ID="btnSubmit" Text="Submit" runat="server" />
                <asp:ValidationSummary ID="vsExerciseUpload" runat="server" DisplayMode="List" ForeColor="Red" />
            </div>
        </form>
    </div>
</asp:Content>

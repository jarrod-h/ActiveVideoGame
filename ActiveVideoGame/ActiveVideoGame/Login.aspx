
<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 10/09/2015
    Description: This is the login page, simply containing username and password fields.--%>

<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ActiveVideoGame.Login" MasterPageFile="Master.Master" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/login.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <form action="MainMenu.aspx" id="registration" runat="server">
            <div id="login_form">
                <div class="section">
                    <div class="row">
                        <h1>Login</h1>
                    </div>
                    <div class="row">Please enter your username and password.</div>
                </div>
                <div class="section">
                    <%--Error message div to be inserted here; displayed when incorrect username and/or password or when incomplete credentials are submitted--%>
                    <div class="row">
                        <asp:TextBox Class="txtInput" ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                    </div>
                    <div class="row">
                        <asp:TextBox Class="txtInput" ID="txtPassword" runat="server" TextMode="password" placeholder="Password"></asp:TextBox>
                        <%--clicking the link below will email the uesr their password if they have entered their email address--%>
                        <a href="~/ForgotPassword.aspx">Forgot Password</a> <%--LINK TO BE AMMENDED/CREATED--%>
                    </div>
                </div>
                <div class="section">
                    <div class="row">
                        <asp:Button ID="btnLogin" Text="Login" runat="server" />
                    </div>
                </div>
                <div class="section">
                    <div class="row">
                        Don't have and account? <a href="~/Register.aspx">Sign up!</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>

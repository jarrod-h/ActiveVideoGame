<%@ Page Title="Register" Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ActiveVideoGame.Register" MasterPageFile="Master.Master" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/register.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <form id="frmRegister" runat="server">
            <div id="section">
                <h1>Register</h1>
                <p>Sign up to Battle!</p>

                <div class="row">
                    First Name:<asp:TextBox Class="txtInput" ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
                </div>
                <div class="row">
                    Surname:<asp:TextBox Class="txtInput" ID="txtLastName" runat="server" placeholder="Surname"></asp:TextBox>
                </div>
                <div class="row">
                    Email:<asp:TextBox Class="txtInput" ID="txtEmailAddress" runat="server" placeholder="Email"></asp:TextBox>
                </div>
                <div class="row">
                    Password:<asp:TextBox Class="txtInput" ID="txtPassword" runat="server" placeholder="Password"></asp:TextBox>
                </div>
                <div class="row">
                    Confirm Password:<asp:TextBox Class="txtInput" ID="txtConfirmPassword" runat="server" placeholder="Confirm Password"></asp:TextBox>
                </div>
                <div class="row">
                        <asp:Button ID="btnRegister" Text="Register" runat="server" PostBackUrl="~/CharacterSelection.aspx"/>
                </div>
            </div>
        </form>
    </div>
</asp:Content>

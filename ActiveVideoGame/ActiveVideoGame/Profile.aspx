<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 02/11/2015
    Description: This page displays allows the user to update their profile properties.--%>

<%@ Page Title="My Profile" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ActiveVideoGame.Profile" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/profile.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="content_window">
        <form id="frmRegister" runat="server">
            <div id="section">
                <h1>Register</h1>
                <p>Enter your details below to sign up for The BETTER Battle!</p>
                <div class="row">
                    First Name:
                    <asp:TextBox CssClass="txtInput" ID="txtFirstName" runat="server" placeholder="First Name">Alice</asp:TextBox>
                </div>
                <div class="row">
                    Last Name:
                    <asp:TextBox CssClass="txtInput" ID="txtLastName" runat="server" placeholder="Surname">Citizen</asp:TextBox>
                </div>
                <div class="row">
                    Email:
                    <asp:RegularExpressionValidator ID="revRegisterEmail" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Please enter a valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
                    <asp:TextBox CssClass="txtInput" ID="txtEmailAddress" runat="server" placeholder="Email" TextMode="Email">alice@domain.com</asp:TextBox>
                </div>
                <div class="row">
                    Parent's Email:
                    <asp:RegularExpressionValidator ID="revRegisterParentEmail" runat="server" ControlToValidate="txtParentEmailAddress" ErrorMessage="Please enter a valid parent email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
                    <asp:TextBox CssClass="txtInput" ID="txtParentEmailAddress" runat="server" placeholder="Parent Email" TextMode="Email">alicesmum@domain.com</asp:TextBox>
                </div>
                <h4>Change password</h4>
                <div class="row">
                    Password:
                    <asp:RegularExpressionValidator ID="revRegisterPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter a valid password at least 8 characters long with at least two upper case letters, one symbol, two digits, three lowercase letters." ValidationExpression="^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&amp;*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8,}$" Display="None"></asp:RegularExpressionValidator>
                    <asp:TextBox CssClass="txtInput" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password" Text="">ABCabc123?!</asp:TextBox>

                </div>
                <div class="row">
                    Confirm Password:
                    <asp:CompareValidator ID="cvRegisterConfirmPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords must match" Display="None"></asp:CompareValidator>
                    <asp:TextBox CssClass="txtInput" ID="txtConfirmPassword" runat="server" placeholder="Confirm Password" TextMode="Password">ABCabc123?!</asp:TextBox>

                </div>
                <div class="row">
                    <asp:Button ID="btnUpdate" Text="Update" runat="server" OnClick="btnUpdate_Click" />
                    <%--validation summary with descriptions of all erroneously entered data--%>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INFT3050Ass1 %>" SelectCommand="SELECT * FROM [Denormalized Data]"></asp:SqlDataSource>
                    <asp:ValidationSummary ID="vsUpdate" runat="server" ForeColor="Red" />
                </div>
            </div>
        </form>
    </div>
</asp:Content>

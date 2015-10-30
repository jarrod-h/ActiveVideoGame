<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 09/10/2015
    Description: This is the user registration page with validated fields.--%>

<%@ Page Title="Register" Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ActiveVideoGame.Register" MasterPageFile="Master.Master" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/register.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <form id="frmRegister" runat="server">
            <div id="section">
                <h1>Register</h1>
                <p>Enter your details below to sign up for The BETTER Battle!</p>

                <%--INPUT FIELDS GO BELOW WITH VALIDATORS--%>
                <div class="row">
                    First Name:
                    <asp:RequiredFieldValidator ID="rfvRegisterFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please enter your first name." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:TextBox Class="txtInput" ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
                    
                </div>
                <div class="row">
                    Surname:
                    <asp:RequiredFieldValidator ID="rfsRegisterSurname" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please enter your Surname." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:TextBox Class="txtInput" ID="txtLastName" runat="server" placeholder="Surname"></asp:TextBox>
                    
                </div>
                <div class="row">
                    Email:
                    <asp:RegularExpressionValidator ID="revRegisterEmail" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Please enter a valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvRegisterEmail" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Please enter an email address." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:TextBox Class="txtInput" ID="txtEmailAddress" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                </div>
                <div class="row">
                    Parent Email:
                    <asp:RegularExpressionValidator ID="revRegisterParentEmail" runat="server" ControlToValidate="txtParentEmailAddress" ErrorMessage="Please enter a valid parent email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvRegisterParentEmail" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Please enter a parent email address." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:TextBox Class="txtInput" ID="txtParentEmailAddress" runat="server" placeholder="Parent Email" TextMode="Email"></asp:TextBox>
                    
                </div>
                <div class="row">
                    Password:
                    <asp:RegularExpressionValidator ID="revRegisterPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter a valid password at least 8 characters long with at least two upper case letters, one symbol, two digits, three lowercase letters." ValidationExpression="^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&amp;*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8,}$" Display="None"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvRegisterPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter a password." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:TextBox Class="txtInput" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    
                </div>
                <div class="row">
                    Confirm Password:
                    <asp:CompareValidator ID="cvRegisterConfirmPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords must match" Display="None"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="rfvRegisterConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please confirm your password." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:TextBox Class="txtInput" ID="txtConfirmPassword" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                    
                </div>
                <div class="row">
                    <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" />
                    <%--validation summary with descriptions of all erroneously entered data--%>
                    <asp:ValidationSummary ID="vsRegister" runat="server" ForeColor="Red" />
                </div>
            </div>
        </form>
    </div>
</asp:Content>

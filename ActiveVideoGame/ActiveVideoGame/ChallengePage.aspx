<%@ Page Title="Challenge" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="ChallengePage.aspx.cs" Inherits="ActiveVideoGame.ChallengePage" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/challengepage.css" />
</asp:Content>
<<<<<<< HEAD
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
=======

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <h1>Challenge</h1>
        <form runat="server">
            <div id="user_monsters">
                <ul>
                    <li>
                        <div id="user_monster_1">
                            <div class="image"></div>
                            <div class="stats"></div>
                        </div>
                    </li>
                    <li>
                        <div id="user_monster_2">
                            <div class="image"></div>
                            <div class="stats"></div>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="other_monsters">
                <ul>
                    <li>
                        <div id="Div1">
                            <div class="image"></div>
                            <div class="stats"></div>
                        </div>
                    </li>
                    <li>
                        <div id="Div2">
                            <div class="image"></div>
                            <div class="stats"></div>
                        </div>
                    </li>
                </ul>
            </div>
            <asp:Button ID="btnChallenge" Text="Challenge!" runat="server" />
        </form>
    </div>
>>>>>>> origin/jarrod_branch
</asp:Content>

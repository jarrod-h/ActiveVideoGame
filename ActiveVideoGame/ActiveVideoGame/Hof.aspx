<%@ Page Title="Hall of Fame" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="Hof.aspx.cs" Inherits="ActiveVideoGame.Hof" ClientIDMode="Inherit"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/hof.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <h1>Hall of Fame</h1>
         <div id="hof_list">
                <ul>
                    <li>
                        <div id="hof_monster_1">
                            <div class="image"></div>
                            <div class="stats"></div>
                        </div>
                    </li>
                    <li>
                        <div id="hof">
                            <div class="image"></div>
                            <div class="stats"></div>
                        </div>
                    </li>
                </ul>
            </div>
    </div>
</asp:Content>

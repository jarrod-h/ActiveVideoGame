<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 10/09/2015
    Description: This page contains all characters which have been retired and admitted to the hall of fame.--%>
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

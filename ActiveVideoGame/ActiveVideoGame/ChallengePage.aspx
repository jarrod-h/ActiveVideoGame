<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 09/10/2015
    Description: This page will display a list of all the users characters (if moe than one exist) and other player characters sorted by 
     compatible rankings from which the user can select. The user then challenges the user to fight if they accept.--%>

<%@ Page Title="Challenge" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="ChallengePage.aspx.cs" Inherits="ActiveVideoGame.ChallengePage" ClientIDMode="Inherit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/challengepage.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <h1>Challenge</h1>
        <form action="FightPage.aspx" runat="server">
            <div class="challenge_table" >
        <form id="Form1" runat="server">

            <asp:GridView ID="challengeGrid1" runat ="server" AutoGenerateColumns="false" DataKeyNames="monsterId" OnDataBound="challengeGrid1_DataBound">
             <columns>
                 <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="lkb" CommandName="YourCommand" runat="server" Text="Challenge!" OnClick="lkb_Click"></asp:Button>
                    </ItemTemplate>
                  </asp:TemplateField>
                 <asp:BoundField DataField="monsterId" HeaderText="Name" SortExpression="Str_monsterName" Visible="False"/>
                 <asp:BoundField DataField="monsterName" HeaderText="Name:" SortExpression="Str_monsterName" />
                 <asp:BoundField DataField="elementType" HeaderText="Element:" SortExpression="Str_elementType" />
                 <asp:TemplateField HeaderText="Level/Step:" SortExpression="Int_exp">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Int_exp") %>'>
                                 </asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" Text='<%# Bind("Int_exp") %>'>
                                 </asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
              </columns>
            </asp:GridView>
            <asp:Button ID="btnReturn2Hub" Text="BACK TO HUB" runat="server" 
                OnClick="btnReturn2Hub_Click" />
            </form>

    </div>
        </form>
    </div>
</asp:Content>
<%--Authors: Jarrod Hiles (c3144253) and Said Djellouli (c3242682)
    Date: 29/08/2015
    Description: This is the Master file which provides a theme-like template for all other pages.
     it also displays the navigation header and footer.--%>

<%@ Page Title="Character Management" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="CharacterManagement.aspx.cs" Inherits="ActiveVideoGame.CharacterManagement" ClientIDMode="Inherit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/charactermanagement.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_window">
        <h1>Character Management</h1>

        <div id="user_monsters">
            <div class="monsterItem" id="monsterItem1">
                    <div class="image">
                        <asp:Image ID="imgMonsterImage1" runat="server" />
                    </div>
                    <div class="stats">
                        <asp:Label ID="lblNumber1" runat="server" Text="">Monster Number: </asp:Label>
                        <asp:Label ID="lblMonsterNumber1" runat="server" Text=""> of 4</asp:Label><br />
                        <asp:Label ID="lblName1" runat="server" Text="">Name: </asp:Label>
                        <asp:Label ID="lblMonsterName1" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblElement1" runat="server" Text="">Element: </asp:Label>
                        <asp:Label ID="lblMonsterElement1" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblLevel1" runat="server" Text="">Level: </asp:Label>
                        <asp:Label ID="lblMonsterLevel1" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblStep1" runat="server" Text="">Step: </asp:Label>
                        <asp:Label ID="lblMonsterStep1" runat="server" Text=""></asp:Label><br />
                    </div>
                </div>
            <div class="monsterItem" id="monsterItem2">
                    <div class="image">
                        <asp:Image ID="imgMonsterImage2" runat="server" />
                    </div>
                    <div class="stats">
                        <asp:Label ID="lblNumber2" runat="server" Text="">Monster Number: </asp:Label>
                        <asp:Label ID="LablblMonsterNumber2" runat="server" Text=""> of 4</asp:Label><br />
                        <asp:Label ID="lblName2" runat="server" Text="">Name: </asp:Label>
                        <asp:Label ID="lblMonsterName2" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblElement2" runat="server" Text="">Element: </asp:Label>
                        <asp:Label ID="lblMonsterElement2" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblLevel2" runat="server" Text="">Level: </asp:Label>
                        <asp:Label ID="lblMonsterLevel2" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblStep2" runat="server" Text="">Step: </asp:Label>
                        <asp:Label ID="lblMonsterStep2" runat="server" Text=""></asp:Label><br />
                    </div>
                </div>
            <div class="monsterItem" id="monsterItem3">
                    <div class="image">
                        <asp:Image ID="imgMonsterImage3" runat="server" />
                    </div>
                    <div class="stats">
                        <asp:Label ID="lblNumber3" runat="server" Text="">Monster Number: </asp:Label>
                        <asp:Label ID="LablblMonsterNumber3" runat="server" Text=""> of 4</asp:Label><br />
                        <asp:Label ID="lblName3" runat="server" Text="">Name: </asp:Label>
                        <asp:Label ID="lblMonsterName3" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblElement3" runat="server" Text="">Element: </asp:Label>
                        <asp:Label ID="lblMonsterElement3" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblLevel3" runat="server" Text="">Level: </asp:Label>
                        <asp:Label ID="lblMonsterLevel3" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblStep3" runat="server" Text="">Step: </asp:Label>
                        <asp:Label ID="lblMonsterStep3" runat="server" Text=""></asp:Label><br />
                    </div>
                </div>
            <div class="monsterItem" id="monsterItem4">
                    <div class="image">
                        <asp:Image ID="imgMonsterImage4" runat="server" />
                    </div>
                    <div class="stats">
                        <asp:Label ID="lblNumber4" runat="server" Text="">Monster Number: </asp:Label>
                        <asp:Label ID="LablblMonsterNumber4" runat="server" Text=""> of 4</asp:Label><br />
                        <asp:Label ID="lblName4" runat="server" Text="">Name: </asp:Label>
                        <asp:Label ID="lblMonsterName4" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblElement4" runat="server" Text="">Element: </asp:Label>
                        <asp:Label ID="lblMonsterElement4" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblLevel4" runat="server" Text="">Level: </asp:Label>
                        <asp:Label ID="lblMonsterLevel4" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblStep4" runat="server" Text="">Step: </asp:Label>
                        <asp:Label ID="lblMonsterStep4" runat="server" Text=""></asp:Label><br />
                    </div>
                </div>

        </div>
    </div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CharacterSelection.aspx.cs" Inherits="ActiveVideoGame.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="selection"><p>Welcome to the Character Selection page. Please select one of the 12 characters available.</p>
        <asp:Image ID="Barbario" runat="server" ImageUrl="Images\barbario.jpg" ImageAlign="Bottom" Width="200px" Height="300px" /><br />
        <asp:Image ID="Bowser" runat="server" ImageUrl="Images\bowser.jpg" ImageAlign="Bottom" Width="200px" Height="300px" /><br />
        <asp:Image ID="Leah" runat="server" ImageUrl="Images\leah.jpg" Width="200px" Height="300px" Margin-Right="30px" ImageAlign="Bottom" /><br />
        <asp:Image ID="Shaman" runat="server" ImageUrl="Images\shaman.jpg" Height="300px" Width="200px" ImageAlign="Bottom" /><br />
        <asp:Image ID="Shavata" runat="server" Height="300px" Width="200px" ImageUrl="Images\shavata.jpg" ImageAlign="Bottom" /><br />
        <asp:Image ID="Cable" runat="server" ImageUrl="Images\cable.jpg" Height="300px" ImageAlign="Bottom" Width="200px"/><br />
        <asp:Image ID="Bulgarov" runat="server" ImageUrl="Images\bulgarov.jpg" Height="300px" ImageAlign="Bottom" Width="200px"/><br />
        <asp:Image ID="Thanos" runat="server" ImageUrl="Images\thanos.jpg" Height="300px" ImageAlign="Bottom" Width="200px"/><br />
        <asp:Image ID="Harley" runat="server" ImageUrl="Images\harley.jpg" Height="300px" ImageAlign="Bottom" Width="200px"/><br />
        <asp:Image ID="Leviatron" runat="server" ImageUrl="Images\leviatron.jpg" Height="300px" ImageAlign="Bottom" Width="200px"/><br />
        <asp:Image ID="Henchman" runat="server" ImageUrl="henchman.jpg" Height="300px" ImageAlign="Bottom" Width="200px" />
        <asp:Image ID="Image12" runat="server" />
        


    </div>
        
    </form>
</body>
</html>

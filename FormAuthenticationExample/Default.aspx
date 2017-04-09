<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FormAuthenticationExample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="AuthenticatedPanel" runat="server">
            <asp:Label runat="server" ID="UsernameLabel" />
            <br />
            <asp:Button runat="server" ID="LogoutButton"
                OnClick="LogoutButton_Click" Text="Logout" />
        </asp:Panel>
        <asp:Panel ID="AnonymousPanel" runat="server">
            <asp:HyperLink runat="server" ID="LoginHyperLink"
                NavigateUrl="~/Login.aspx" Text="Login" />
        </asp:Panel>
    </form>
</body>
</html>

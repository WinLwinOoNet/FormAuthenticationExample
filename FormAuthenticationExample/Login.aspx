<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FormAuthenticationExample.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label runat="server" ID="MessageLabel" />
        </p>
        <p>
            Username:
            <asp:TextBox runat="server" ID="UsernameTextBox" />
        </p>
        <p>
            Password:
            <asp:TextBox runat="server" ID="PasswordTextBox" />
        </p>
        <p>
            Remember Me:
            <asp:CheckBox runat="server" ID="RememberMeCheckBox" />
        </p>
        <p>
            <asp:Button runat="server" ID="SubmitButton" Text="Submit"
                OnClick="SubmitButton_Click" />
        </p>
        <p>Username: johndoe, Password: 123456</p>
    </form>
</body>
</html>

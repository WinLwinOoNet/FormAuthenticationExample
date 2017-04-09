﻿using System;
using System.Web.Security;

namespace FormAuthenticationExample
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/");
            }
        }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        string username = UsernameTextBox.Text,
            password = PasswordTextBox.Text;
        bool rememberMe = RememberMeCheckBox.Checked;

        // Retrieve username and hashed password from database, and validate them
        if (username.Equals("johndoe", StringComparison.InvariantCultureIgnoreCase) &&
            password.Equals("123456", StringComparison.InvariantCultureIgnoreCase))
        {
            FormsAuthentication.RedirectFromLoginPage(username, rememberMe);
        }
        MessageLabel.Text = "Invalid username or password";
    }
    }
}
using System;
using System.Web.Security;
using System.Web.UI;

namespace FormAuthenticationExample
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                UsernameLabel.Text = "Username: " + User.Identity.Name;
                AuthenticatedPanel.Visible = true;
                AnonymousPanel.Visible = false;
            }
            else
            {
                AuthenticatedPanel.Visible = false;
                AnonymousPanel.Visible = true;
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/"); // Refresh this page again
        }
    }
}
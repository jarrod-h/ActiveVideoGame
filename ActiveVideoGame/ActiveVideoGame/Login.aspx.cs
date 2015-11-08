using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using ActiveVideoGame;

namespace ActiveVideoGame
{
    public partial class Login : System.Web.UI.Page
    {
        string loginUsername;
        string loginPassword;
        private User player = new User();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            loginUsername = txtUsername.Text;
            loginPassword = txtPassword.Text;
            AuthenticateLogin();
        }

        protected void AuthenticateLogin()
        {
            if (player.userLogin(loginUsername, loginPassword) > 0)
            {
                Master.setSignedIn(true);
                Session["UserID"] = player.UserId;
                Session["Username"] = player.Username;
                Response.Redirect("MainMenu.aspx");
            }
        }
    }
}
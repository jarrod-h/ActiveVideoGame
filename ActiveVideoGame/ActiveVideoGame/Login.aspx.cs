using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace ActiveVideoGame
{
    public partial class Login : System.Web.UI.Page
    {
        string loginUsername;
        string loginPassword;

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
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["INFT3050Ass1"].ConnectionString);
            conn.Open();
            SqlCommand command = new SqlCommand("SELECT count(*) FROM Users WHERE Username = '" + loginUsername + "'", conn);
            int flag = Convert.ToInt32(command.ExecuteScalar().ToString());
            if (flag == 1)
            {
                SqlCommand PasswordCmd = new SqlCommand("SELECT Password FROM Users WHERE Username = '" + loginUsername + "'", conn);
                string password = PasswordCmd.ExecuteScalar().ToString();
                if (password.Equals(loginPassword))
                {
                    Session["Username"] = loginUsername;
                    Master.setSignedIn(true);
                    Response.Write("Password is correct");
                    Response.Redirect("MainMenu.aspx");
                }
                else
                {
                    Response.Write("Password is not correct");
                }
            }
            else
            {
                Response.Write("Username is not correct");
            }
            conn.Close();
        }
    }
}
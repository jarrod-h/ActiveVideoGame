using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ActiveVideoGame;

namespace ActiveVideoGame
{
    public partial class Register : System.Web.UI.Page
    {
        private User player;
        private string Username, FirstName, LastName, Email, ParentEmail, Password;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Username = txtUsername.Text;
                FirstName = txtFirstName.Text;
                LastName = txtLastName.Text;
                Email = txtEmailAddress.Text;
                ParentEmail = txtParentEmailAddress.Text;
                Password = txtPassword.Text;
                player = new User(Username, FirstName, LastName, Email, ParentEmail, Password);
                Response.Redirect("Login.aspx");
            }
            else
            {

            }
            
            ////
            //if (Page.IsValid)
            //{
            //    int userId = 0;
            //    string constr = ConfigurationManager.ConnectionStrings["INFT3050Ass1"].ConnectionString;
            //    using (SqlConnection con = new SqlConnection(constr))
            //    {
            //        using (SqlCommand cmd = new SqlCommand("insert_user"))
            //        {
            //            using (SqlDataAdapter sda = new SqlDataAdapter())
            //            {
            //                cmd.CommandType = CommandType.StoredProcedure;
            //                cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
            //                cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
            //                cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
            //                cmd.Parameters.AddWithValue("@Email", txtEmailAddress.Text.Trim());
            //                cmd.Parameters.AddWithValue("@ParentEmail", txtParentEmailAddress.Text.Trim());
            //                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
            //                cmd.Connection = con;
            //                con.Open();
            //                userId = Convert.ToInt32(cmd.ExecuteScalar());
            //                con.Close();
            //            }
            //        }
            //        string message = string.Empty;
            //        switch (userId)
            //        {
            //            case -1:
            //                message = "Username already exists.\\nPlease choose a different username.";
            //                break;
            //            case -2:
            //                message = "Supplied email address has already been used.";
            //                break;
            //            default:
            //                message = "Registration successful.\\nUser Id: " + userId.ToString();
            //                break;
            //        }
            //        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            //        Response.Redirect("MainMenu.aspx");
            //    }
            //}
            //else
            //{

            //}
        }
    }
}
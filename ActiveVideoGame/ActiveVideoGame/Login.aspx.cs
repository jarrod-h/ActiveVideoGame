using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ActiveVideoGame
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["INFT3050Ass1"].ConnectionString);
            conn.Open();
            string checkuser= "select count(*) from tbl_user where Str_PK_username = '"+ txtUsername.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                string checkPasswordQuery = "select Str_password from tbl_user where Str_PK_username = '" + txtUsername.Text + "'";
                SqlCommand PassCom = new SqlCommand(checkPasswordQuery, conn);
                string password = PassCom.ExecuteScalar().ToString();
                if (password.Equals(txtPassword.Text))
                {
                    Session["New"] = txtUsername.Text;
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
        }
    }
    }
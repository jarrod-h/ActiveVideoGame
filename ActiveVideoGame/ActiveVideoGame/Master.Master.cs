using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ActiveVideoGame
{
    public partial class Master : System.Web.UI.MasterPage
    {
        private bool signedIn;
        private string[] PublicPages = new string[] {"/Login.aspx", "/Welcome.aspx", "/Hof.aspx", "/Register.aspx"};

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Convert.ToString(Session["UserId"]).Equals("0"))
            {
                lbl_username.Visible = true;
                lbl_username.Text = "Welcome " + Convert.ToString(Session["Username"] + "!");
                lnk_signIn.Text = "Sign Out";
                lnk_signIn.NavigateUrl = "Logout.aspx";
                lnk_register.Visible = false;
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("Current Page: " + HttpContext.Current.Request.Url.AbsolutePath);
                lnk_signIn.Text = "Sign In";
                if (!isPublicPage(HttpContext.Current.Request.Url.AbsolutePath))
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        public void setSignedIn(bool value)
        {
            signedIn = value;
        }

        public bool getSignedIn()
        {
            return signedIn;
        }

        private bool isPublicPage(string page)
        {
            foreach (string x in PublicPages)
            {
                if (PublicPages.Contains(page))
                {
                    return true;
                }
            }
            return false;
        }

    }
}
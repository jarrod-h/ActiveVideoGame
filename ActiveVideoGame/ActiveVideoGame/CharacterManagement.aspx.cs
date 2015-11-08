using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ActiveVideoGame
{
    public partial class CharacterManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Session: " + Convert.ToString(Session["UserId"]));//DEBUG
            //If the user is not logged in, the Session object "Username" will not have been set to anything
            //The user is therefore redirected back to the login page
            if (Convert.ToInt32(Session["UserId"]) < 1)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                loadUserMonsters();
            }
        }

        protected void loadUserMonsters()
        {
            //this class finds the monsters a user owns (including deactivated monsters in the hof) and places them onto the page (which will need to be changed from static to a gridview)
            //if less than four monsters are owned and active by a user, the user is able to create a character by clicking a button "Add Character" which loads AddCharacter.aspx
        }
    }
}
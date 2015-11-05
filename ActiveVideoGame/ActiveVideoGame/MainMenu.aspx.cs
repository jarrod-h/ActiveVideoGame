using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ActiveVideoGame
{
    public partial class MainMenu : System.Web.UI.Page
    {
        private string monster1Name, monster2Name, monster3Name, monster4Name, monster1Element, monster2Element, monster3Element, monster4Element;
        private int monster1Xp, monster2Xp, monster3Xp, monster4Xp, monster1Id, monster2Id, monster3Id, monster4Id, selectedMonster, userLevel, userStep;
        private int monsterNum = 1;
        private DataSet userMonsters = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Session: "+Convert.ToString(Session["Username"]));//DEBUG
            //If the user is not logged in, the Session object "Username" will not have been set to anything
            //The user is therefore redirected back to the login page
            if (Convert.ToString(Session["Username"]).Equals(""))
            {
                Response.Redirect("Login.aspx");
            }
        }

        private void getUserMonsters(string username)
        {
            //Retrieve from the database monster for the username

            SqlConnection SelectConn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["INFT2050Ass1"].ConnectionString);
            string select = "SELECT Characters.CharacterName, Characters.Username, Elements.ElementType, Characters.ExperiencePoints FROM Characters INNER JOIN Elements ON Characters.ElementID = Elements.ElementId WHERE Characters.Retired = 0 AND Characters.Username = " + Convert.ToString(Session["Username"]);
            SqlDataAdapter monstersAccess = new SqlDataAdapter(select, SelectConn);
            monstersAccess.Fill(userMonsters, "Monsters");
        }

        private void setMonsterValues()
        {
            //Retrieves the monster stats from the dataset
            try
            {
                monster1Name = Convert.ToString(userMonsters.Tables[0].Rows[0][0]);
                monster1Element = Convert.ToString(userMonsters.Tables[0].Rows[0][2]);
                monster1Xp = Convert.ToInt32(userMonsters.Tables[0].Rows[0][3]);
            }
            catch
            {
                monster1Name = "";
                monster1Element = "";
                Response.Redirect("/CharacterManagement.aspx");
            }
            try
            {
                monster2Name = Convert.ToString(userMonsters.Tables[0].Rows[1][0]);
                monster2Element = Convert.ToString(userMonsters.Tables[0].Rows[1][2]);
                monster2Xp = Convert.ToInt32(userMonsters.Tables[0].Rows[1][3]);
            }
            catch
            {
                monster2Name = "";
                monster2Element = "";
            }
            try
            {
                monster3Name = Convert.ToString(userMonsters.Tables[0].Rows[2][0]);
                monster3Element = Convert.ToString(userMonsters.Tables[0].Rows[2][2]);
                monster3Xp = Convert.ToInt32(userMonsters.Tables[0].Rows[2][3]);
            }
            catch
            {
                monster3Name = "";
                monster3Element = "";
            }
            try
            {
                monster4Name = Convert.ToString(userMonsters.Tables[0].Rows[3][0]);
                monster4Element = Convert.ToString(userMonsters.Tables[0].Rows[3][2]);
                monster4Xp = Convert.ToInt32(userMonsters.Tables[0].Rows[3][3]);
            }
            catch
            {
                monster4Name = "";
                monster4Element = "";
            }
        }

        private void updateInterface()
        {
            switch (monsterNum)
            {
                case 1:
                    lblMonsterName.Text = monster1Name;
                    lblMonsterElement.Text = monster1Element;
                    updateMonster1Image();
                    getLevelStep(monster1Xp);
                    lblMonsterLevel.Text = Convert.ToString(userLevel);
                    lblMonsterStep.Text = Convert.ToString(userStep);
                    lblMonsterNumber.Text = Convert.ToString(monsterNum) + " of 4";
                    Session["sessionMonsterXp"] = monster1Xp;
                    break;
                case 2:
                    lblMonsterName.Text = monster2Name;
                    lblMonsterElement.Text = monster2Element;
                    updateMonster2Image();
                    getLevelStep(monster2Xp);
                    lblMonsterLevel.Text = Convert.ToString(userLevel);
                    lblMonsterStep.Text = Convert.ToString(userStep);
                    lblMonsterNumber.Text = Convert.ToString(monsterNum) + " of 4";
                    Session["sessionMonsterXp"] = monster2Xp;
                    break;
                case 3:
                    lblMonsterName.Text = monster3Name;
                    lblMonsterElement.Text = monster3Element;
                    updateMonster3Image();
                    getLevelStep(monster3Xp);
                    lblMonsterLevel.Text = Convert.ToString(userLevel);
                    lblMonsterStep.Text = Convert.ToString(userStep);
                    lblMonsterNumber.Text = Convert.ToString(monsterNum) + " of 4";
                    Session["sessionMonsterXp"] = monster3Xp;
                    break;
                case 4:
                    lblMonsterName.Text = monster4Name;
                    lblMonsterElement.Text = monster4Element;
                    updateMonster4Image();
                    getLevelStep(monster4Xp);
                    lblMonsterLevel.Text = Convert.ToString(userLevel);
                    lblMonsterStep.Text = Convert.ToString(userStep);
                    lblMonsterNumber.Text = Convert.ToString(monsterNum) + " of 4";
                    Session["sessionMonsterXp"] = monster4Xp;
                    break;
            }
        }

        protected void updateMonster1Image()
        {
            //Display required image
            if (monster1Element == "Fire")
            {
                imgMonsterImage.ImageUrl = "image/elementImageFire.png
            }
        }

        protected void Monster1_Click(object sender, EventArgs e)
        {

        }

        protected void Monster2_Click(object sender, EventArgs e)
        {

        }

        protected void Monster3_Click(object sender, EventArgs e)
        {

        }

        protected void Monster4_Click(object sender, EventArgs e)
        {

        }


    }
}
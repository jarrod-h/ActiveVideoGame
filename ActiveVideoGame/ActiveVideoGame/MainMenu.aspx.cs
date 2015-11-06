using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace ActiveVideoGame
{
    public partial class MainMenu : System.Web.UI.Page
    {
        private string monster1Name, monster2Name, monster3Name, monster4Name, monster1Element, monster2Element, monster3Element, monster4Element;
        private int monster1Xp, monster2Xp, monster3Xp, monster4Xp, monster1Id, monster2Id, monster3Id, monster4Id, userLevel, userStep;
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
            else
            {
                getUserMonsters(Convert.ToString(Session["Username"]));
                setMonsterValues();
                updateInterface();
            }
        }

        private void getUserMonsters(string username)
        {
            //Retrieve from the database monster for the username

            SqlConnection SelectConn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["INFT3050Ass1"].ConnectionString);
            string select = "SELECT [Monsters].[MonsterId], [Monsters].[MonsterName], [Monsters].[Username], [Elements].[ElementType], [Monsters].[ExperiencePoints] FROM [INFT3050Ass1].[dbo].[Monsters] INNER JOIN [INFT3050Ass1].[dbo].[Elements] ON [Monsters].[ElementId] = [Elements].[ElementId] WHERE [Monsters].[Retired] = 0 AND [Monsters].[Username] = '" + Convert.ToString(Session["Username"]) + "'";
            SqlDataAdapter monstersAccess = new SqlDataAdapter(select, SelectConn);
            monstersAccess.Fill(userMonsters, "Monsters");
        }

        private void setMonsterValues()
        {
            //Retrieves the monster stats from the dataset
            try
            {
                monster1Id = Convert.ToInt32(userMonsters.Tables[0].Rows[0][0]);
                monster1Name = Convert.ToString(userMonsters.Tables[0].Rows[0][1]);
                monster1Element = Convert.ToString(userMonsters.Tables[0].Rows[0][3]);
                monster1Xp = Convert.ToInt32(userMonsters.Tables[0].Rows[0][4]);
            }
            catch
            {
                monster1Name = "";
                monster1Element = "";
                lblMonsterLevel.Text = "";
                lblMonsterNumber.Text = "";
                Response.Redirect("/CharacterManagement.aspx");
            }
            try
            {
                monster2Id = Convert.ToInt32(userMonsters.Tables[0].Rows[1][0]);
                monster2Name = Convert.ToString(userMonsters.Tables[0].Rows[1][1]);
                monster2Element = Convert.ToString(userMonsters.Tables[0].Rows[1][3]);
                monster2Xp = Convert.ToInt32(userMonsters.Tables[0].Rows[1][4]);
            }
            catch
            {
                monster2Name = "";
                monster2Element = "";
            }
            try
            {
                monster3Id = Convert.ToInt32(userMonsters.Tables[0].Rows[2][0]);
                monster3Name = Convert.ToString(userMonsters.Tables[0].Rows[2][1]);
                monster3Element = Convert.ToString(userMonsters.Tables[0].Rows[2][3]);
                monster3Xp = Convert.ToInt32(userMonsters.Tables[0].Rows[2][4]);
            }
            catch
            {
                monster3Name = "";
                monster3Element = "";
            }
            try
            {
                monster4Id = Convert.ToInt32(userMonsters.Tables[0].Rows[3][0]);
                monster4Name = Convert.ToString(userMonsters.Tables[0].Rows[3][1]);
                monster4Element = Convert.ToString(userMonsters.Tables[0].Rows[3][3]);
                monster4Xp = Convert.ToInt32(userMonsters.Tables[0].Rows[3][4]);
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

        #region updateImages

        protected void updateMonster1Image()
        {
            //Display required image
            if (monster1Element == "Fire")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageFire.png";
            }
            else if (monster1Element == "Air")
            {
                System.Diagnostics.Debug.WriteLine("HERE");//DEBUG
                imgMonsterImage.ImageUrl = "/Images/elementImageAir.png";
            }
            else if (monster1Element == "Water")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageWater.png";
            }
            else if (monster1Element == "Earth")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageEarth.png";
            }
            else
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageDefault.png";
            }
        }

        protected void updateMonster2Image()
        {
            //Display required image
            if (monster2Element == "Fire")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageFire.png";
            }
            else if (monster2Element == "Air")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageAir.png";
            }
            else if (monster2Element == "Water")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageWater.png";
            }
            else if (monster2Element == "Earth")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageEarth.png";
            }
            else
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageDefault.png";
            }
        }

        protected void updateMonster3Image()
        {
            //Display required image
            if (monster3Element == "Fire")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageFire.png";
            }
            else if (monster3Element == "Air")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageAir.png";
            }
            else if (monster3Element == "Water")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageWater.png";
            }
            else if (monster3Element == "Earth")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageEarth.png";
            }
            else
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageDefault.png";
            }
        }

        protected void updateMonster4Image()
        {
            //Display required image
            if (monster4Element == "Fire")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageFire.png";
            }
            else if (monster4Element == "Air")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageAir.png";
            }
            else if (monster4Element == "Water")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageWater.png";
            }
            else if (monster4Element == "Earth")
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageEarth.png";
            }
            else
            {
                imgMonsterImage.ImageUrl = "/Images/elementImageDefault.png";
            }
        }

        #endregion

        public void getLevelStep(int userXp)
        {
            if (userXp >= 0 && userXp <=200)
            {
                userLevel = 1;
                userStep = 1;
            }
            else if (userXp >= 201 && userXp <= 425)
            {
                userLevel = 1;
                userStep = 2;
            }
            else if (userXp >= 426 && userXp <= 675)
            {
                userLevel = 1;
                userStep = 3;
            }
            else if (userXp >= 676 && userXp <= 675)
            {
                userLevel = 1;
                userStep = 4;
            }
            else if (userXp >= 1001 && userXp <= 1400)
            {
                userLevel = 2;
                userStep = 1;
            }
            else if (userXp >= 1401 && userXp <= 1900)
            {
                userLevel = 2;
                userStep = 2;
            }
            else if (userXp >= 1901 && userXp <= 2400)
            {
                userLevel = 2;
                userStep = 3;
            }
            else if (userXp >= 2401 && userXp <= 3000)
            {
                userLevel = 2;
                userStep = 4;
            }
            else if (userXp >= 3001 && userXp <= 3700)
            {
                userLevel = 3;
                userStep = 1;
            }
            else if (userXp >= 3701 && userXp <= 4500)
            {
                userLevel = 3;
                userStep = 2;
            }
            else if (userXp >= 4501 && userXp <= 5400)
            {
                userLevel = 3;
                userStep = 3;
            }
            else if (userXp >= 5401 && userXp <= 6400)
            {
                userLevel = 3;
                userStep = 4;
            }
            else if (userXp >= 6401 && userXp <= 7500)
            {
                userLevel = 4;
                userStep = 1;
            }
            else if (userXp >= 7501 && userXp <= 8700)
            {
                userLevel = 4;
                userStep = 2;
            }
            else if (userXp >= 8701 && userXp <= 100000)
            {
                userLevel = 4;
                userStep = 3;
            }
            else if (userXp >= 10001 && userXp <= 11500)
            {
                userLevel = 4;
                userStep = 4;
            }
            else if (userXp >=11501)
            {
                userLevel = 4;
                userStep = 4;
            }
        }

        protected void Monster1_Click(object sender, EventArgs e)
        {
            monsterNum = 1;
            updateInterface();
            Session["userMonsterXp"] = Convert.ToInt32(monster1Xp);
            Session["userMonsterId"] = monster1Id;
        }

        protected void Monster2_Click(object sender, EventArgs e)
        {
            monsterNum = 2;
            updateInterface();
            Session["userMonsterXp"] = Convert.ToInt32(monster2Xp);
            Session["userMonsterId"] = monster2Id;
        }

        protected void Monster3_Click(object sender, EventArgs e)
        {
            monsterNum = 3;
            updateInterface();
            Session["userMonsterXp"] = Convert.ToInt32(monster3Xp);
            Session["userMonsterId"] = monster3Id;
        }

        protected void Monster4_Click(object sender, EventArgs e)
        {
            monsterNum = 4;
            updateInterface();
            Session["userMonsterXp"] = Convert.ToInt32(monster4Xp);
            Session["userMonsterId"] = monster4Id;
        }


    }
}
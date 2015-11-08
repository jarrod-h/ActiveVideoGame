using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ActiveVideoGame.DAL
{
    public class ChallengeDAL
    {
        
        string constr = ConfigurationManager.ConnectionStrings["INFT3050Ass1"].ConnectionString;
        
        //zero arg constructor
        public ChallengeDAL()
        {

        }

        //Returns a DataTable containing the viable monsters for a user to select to challenge
        //The Challenge.cs (BLL) will pass into this function, the minimum and maximum experience point values,
        // along with the userId of the active user. It will SELECT * monsters WHERE UserId != @UserId 
        // AND where ExperiencePoints >= @minXP AND ExperiencePoints <= @maxXP AND where monster is not inHof (retired and out of action)
        //public ChallengeDAL(int UserId, int maxXP, int minXp)
        //{
        //    DataTable viableOpponents = new DataTable();
        //    SqlConnection con = new SqlConnection(constr);
        //    SqlCommand com = new SqlCommand("select_monstersForChallenge");
        //    SqlDataAdapter adp = new SqlDataAdapter(com);
        //    com.Parameters.AddWithValue("@UserId", UserId);
        //    com.Parameters.AddWithValue("@maxXp", maxXP);
        //    com.Parameters.AddWithValue("@minXp", minXp);
        //    com.Connection = con;
        //    try
        //    {
        //        con.Open();
        //        adp.Fill(viableOpponents);
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //    finally
        //    {
        //        con.Close();
        //    }
        //    //return viableOpponents;
        //}
    }
}
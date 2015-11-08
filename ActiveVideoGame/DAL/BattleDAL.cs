using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ActiveVideoGame.DAL
{
    public class BattleDAL
    {
        public int _userId, _opponentId, _minXP, _maxXP;
        string constr = ConfigurationManager.ConnectionStrings["INFT3050Ass1"].ConnectionString;
        
        //zero arg constructor
        public BattleDAL()
        {

        }

        //Returns a DataTable containing the viable monsters for a user to select to challenge
        //The Challenge.cs (BLL) will pass into this function, the minimum and maximum experience point values,
        // along with the userId of the active user. It will SELECT * monsters WHERE UserId != @UserId 
        // AND where ExperiencePoints >= @minXP AND ExperiencePoints <= @maxXP AND where monster is not inHof (retired and out of action)
        public DataTable ViewBattle(int UserId, int _opponentId, int maxXP, int minXp)
        {
            DataTable viableOpponents = new DataTable();
            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand("select_monstersForChallenge");
            SqlDataAdapter adp = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("@UserId", UserId);
            com.Parameters.AddWithValue("@maxXp", maxXP);
            com.Parameters.AddWithValue("@minXp", minXp);
            com.Connection = con;
            try
            {
                con.Open();
                adp.Fill(viableOpponents);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return viableOpponents;
        }

        //UserId
        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        //OpponentId
        public int OpponentId
        {
            get { return _opponentId; }
            set { _opponentId = value; }
        }
        //MinXP
        public int MinXP
        {
            get { return _minXP; }
            set { _minXP = value; }
        }
        //MaxXP
        public int MaxXP
        {
            get { return _maxXP; }
            set { _maxXP = value; }
        }
    }
}



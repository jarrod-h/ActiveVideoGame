using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ActiveVideoGame.DAL
{
    public class MonsterDAL
    {
        string _monsterName, _username, _elementName;
        bool _inHof = false;
        int _monsterId, _elementId, _userId, _experiencePoints = 0;

        string constr = ConfigurationManager.ConnectionStrings["INFT3050Ass1"].ConnectionString;

        //zero arg constructor
        public MonsterDAL()
        {

        }

        //constructor
        public MonsterDAL(string MonsterName, int UserId, int ElementId, int ExperiencePoints, bool InHof)
        {
            int status = 0;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("insert_monster"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@MonsterName", MonsterName);
                        cmd.Parameters.AddWithValue("@UserId", UserId);
                        cmd.Parameters.AddWithValue("@ElementId", ElementId);
                        cmd.Parameters.AddWithValue("@ExperiencePoints", ExperiencePoints);
                        cmd.Parameters.AddWithValue("@InHof", InHof);
                        cmd.Connection = con;
                        try
                        {
                            con.Open();
                            status = Convert.ToInt32(cmd.ExecuteScalar());
                        }
                        catch (Exception ex)
                        {
                            throw ex;
                        }
                        finally
                        {
                            con.Close();
                        }
                    }
                }
                if (status < 0)
                {
                    System.Diagnostics.Debug.WriteLine("Attempt to insert monster into database failed at Monster()");
                }
                else
                {
                    System.Diagnostics.Debug.WriteLine("Monster inserted into database. Status code = " + Convert.ToString(status));
                }
            }
        }

        public DataTable selectMonster(int MonsterId) 
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand("select_monster");
            SqlDataAdapter adp = new SqlDataAdapter(com);
            DataTable monsterData = new DataTable();
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@MonsterId", MonsterId);
            com.Connection = con;
            try
            {
                con.Open();
                adp.Fill(monsterData);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return monsterData;
        }

        //Returns all monsters owned by the calling user - called when a user enters their main menu to see their own monsters
        public DataTable ReturnMonsters(int UserId) 
        {
            DataTable monsterData = new DataTable();
            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand("select_monstersByUser");
            SqlDataAdapter adp = new SqlDataAdapter(com);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@UserId", UserId);
            com.Connection = con;
            try
            {
                con.Open();
                adp.Fill(monsterData);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return monsterData;
        }

        //GETTERS AND SETTERS
        //
        //MonsterId
        public int MonsterId
        {
            get { return _monsterId; }
            set { _monsterId = value; }
        }
        //MonsterName
        public string MonsterName
        {
            get { return _monsterName; }
            set { _monsterName = value; }
        }
        //UserId
        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        //Username
        public string Username
        {
            get { return _username; }
            set { _username = value; }
        }
        //ElementId
        public int ElementId
        {
            get { return _elementId; }
            set { _elementId = value; }
        }
        //ElementName
        public string ElementName
        {
            get { return _elementName; }
            set { _elementName = value; }
        }
        //ExperiencePoints
        public int ExperiencePoints
        {
            get { return _experiencePoints; }
            set { _experiencePoints = value; }
        }
        //InHof
        public bool Email
        {
            get { return _inHof; }
            set { _inHof = value; }
        }

        
    }
}
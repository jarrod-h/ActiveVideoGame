using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ActiveVideoGame.DAL
{
    public class UserDAL
    {
        string _username, _firstName, _lastName, _email, _parentEmail, _password;
        bool _nameIsPublic, _accountEnabled;
        int _userId, _unallocatedPoints;

        string constr = ConfigurationManager.ConnectionStrings["INFT3050Ass1"].ConnectionString;

        //zero arg constructor
        public UserDAL()
        {

        }

        //constructor
        public UserDAL(string Username, string FirstName, string LastName, string Email, string ParentEmail, string Password)
        {
            int status = 0;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("insert_user"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@FirstName", FirstName);
                        cmd.Parameters.AddWithValue("@LastName", LastName);
                        cmd.Parameters.AddWithValue("@Username", Username);
                        cmd.Parameters.AddWithValue("@Email", Email);
                        cmd.Parameters.AddWithValue("@ParentEmail", ParentEmail);
                        cmd.Parameters.AddWithValue("@Password", Password);
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
            }
            if (status < 0)
            {
                System.Diagnostics.Debug.WriteLine("Attempt to insert user into database failed at User() RegisterDAL.UserDAL()");
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("User inserted into database. Status code = " + Convert.ToString(status));
            }
        }

        //GETTERS AND SETTERS
        //UserId -- when a user logs in, this function will return the userId
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
        //FirstName
        public string FirstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }
        //LastName
        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }
        //Email
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        //ParentEmail
        public string ParentEmail
        {
            get { return _parentEmail; }
            set { _parentEmail = value; }
        }
        //Password
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }
        //NameIsPublic
        public bool NameIsPublic
        {
            get { return _nameIsPublic; }
            set { _nameIsPublic = value; }
        }
        //AccountEnabled
        public bool AccountEnabled
        {
            get { return _accountEnabled; }
            set { _accountEnabled = value; }
        }
        //UnallocatedPoints
        public int UnallocatedPoints
        {
            get { return _unallocatedPoints; }
            set { _unallocatedPoints = value; }
        }

        public DataSet getUsers()
        {
            return new DataSet();
        }




        public string StatusMessage(int userIdStatus)
        {
            string message = string.Empty;
            switch (userIdStatus)
            {
                case -1:
                    message = "Username already exists.\\nPlease choose a different username.";
                    break;
                case -2:
                    message = "Supplied email address has already been used.";
                    break;
                default:
                    message = "Registration successful.\\nUser Id: " + userIdStatus.ToString();
                    break;
            }
            //System.Diagnostics.Debug.WriteLine("Session: "+Convert.ToString(Session["UserId"]));//DEBUG
            //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            //Response.Redirect("MainMenu.aspx");
            return message;
        }
    }
}
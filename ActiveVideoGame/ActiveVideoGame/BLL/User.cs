using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ActiveVideoGame.DAL;
using System.Data;

namespace ActiveVideoGame
{

    public class User
    {
        
        string _username, _firstName, _lastName, _email, _parentEmail, _password;
        bool _nameIsPublic, _accountEnabled;
        int _userId, _unallocatedPoints;

        //zero arg constructor
        public User()
        {

        }

        //constructor
        public User(string Username, string FirstName, string LastName, string Email, string ParentEmail, string Password)
        {
            UserDAL RegisterDAL;
            RegisterDAL = new UserDAL(Username, FirstName, LastName, Email, ParentEmail, Password);
            //--RegisterDAL.StatusMessage
        }

        public int userLogin(string Username, string Password)
        {
            int status = 0;
            UserDAL LoginDAL = new UserDAL();
            status = LoginDAL.FindUser(Username, Password);
            if (status > 0)//user found
            {
                DataTable userProperties = LoginDAL.selectUser(Username);
                this.UserId = Convert.ToInt32(userProperties.Rows[0][0]);
                this.Username = Username;
                this.FirstName = Convert.ToString(userProperties.Rows[0][1]);
                this.LastName = Convert.ToString(userProperties.Rows[0][2]);
                this.Email = Convert.ToString(userProperties.Rows[0][3]);
                this.ParentEmail = Convert.ToString(userProperties.Rows[0][4]);
                this.Password = Convert.ToString(userProperties.Rows[0][5]);
            }
            return status;
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

        public List<User> getUsers()
        {
            UserDAL obj = new UserDAL();
            DataSet ds = obj.getUsers();
            List<User> oUsers = new List<User>();
            foreach (DataRow orow in ds.Tables[0].Rows)
            {
                //Fill the list
            }
            return oUsers;
        }
    }
}
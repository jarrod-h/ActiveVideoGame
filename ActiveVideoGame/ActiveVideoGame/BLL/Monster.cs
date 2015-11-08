using ActiveVideoGame.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ActiveVideoGame.BLL
{
    public class Monster
    {
        int _monsterId, _userId, _elementId, _experiencePoints;
        string _monsterName;
        bool _inHof = false;

        public Monster()
        {

        }
        public Monster(string MonsterName, int UserId, int ElementId, int ExperiencePoints, bool InHof)
        {
            MonsterDAL InsertDAL = new MonsterDAL(MonsterName, UserId, ElementId, ExperiencePoints, InHof);
        }

        public DataTable ReturnMonsters(int UserId)
        {
            MonsterDAL obj = new MonsterDAL();
            DataTable dt = obj.ReturnMonsters(UserId);
            return dt;
            //List<Monster> monsterList = new List<Monster>();
            //foreach (DataRow row in dt.Rows)
            //{
            //    Monster monster = new Monster();
            //    monster._monsterId = Convert.ToInt32(row[0]);
            //    monster._monsterName = Convert.ToString(row[1]);
            //    monster._userId = Convert.ToInt32(row[2]);
            //    monster._elementId = Convert.ToInt32(row[3]);
            //    monster._experiencePoints = Convert.ToInt32(row[4]);
            //    monster._inHof = Convert.ToBoolean(row[5]);
            //    monsterList.Add(monster);
            //}
            //return monsterList;

        }

        //GETTERS AND SETTERS
        //MonsterId
        public int MonsterId
        {
            get { return _monsterId; }
            set { _monsterId = value; }
        }

        //UesrId
        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        //ElementId
        public int ElementId
        {
            get { return _elementId; }
            set { _elementId = value; }
        }
        //ExperiencePoints
        public int ExperiencePoints
        {
            get { return _experiencePoints; }
            set { _experiencePoints = value; }
        }
        //MonsterName
        public string MonsterName
        {
            get { return _monsterName; }
            set { _monsterName = value; }
        }
        //InHof
        public bool InHof
        {
            get{return _inHof;}
            set { _inHof = value; }
        }
    }
}
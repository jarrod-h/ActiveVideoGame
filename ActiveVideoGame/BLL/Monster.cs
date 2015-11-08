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
            MonsterDAL InsertDAL;
            InsertDAL = new MonsterDAL(MonsterName, UserId, ElementId, ExperiencePoints, InHof);

        }

        public List<Monster> ReturnMonsters(int UserId)
        {
            List<Monster> MonsterList = new List<Monster>();
            MonsterDAL obj = new MonsterDAL();
            DataTable dt = obj.ReturnMonsters(UserId);
            foreach (DataRow row in dt.Rows)
            {
                Monster monster = new Monster();
                monster._monsterName = Convert.ToString(row[1]);
                monster._userId = Convert.ToInt32(row[2]);
                monster._elementId = Convert.ToInt32(row[3]);
                monster._experiencePoints = Convert.ToInt32(row[4]);
                monster._monsterId = Convert.ToInt32(row[0]);
                monster._inHof = Convert.ToBoolean(row[5]);
                MonsterList.Add(monster);

            }
            return MonsterList;

        }
    }
}
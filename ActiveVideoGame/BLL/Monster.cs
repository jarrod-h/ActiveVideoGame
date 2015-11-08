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
        int _monsterId, _userId, _elementId, _eperiencePoints;
        string _monsterName;
        bool _inHof = false;

        public Monster()
        {

        }
        public Monster(string MonsterName, int UserId, int ElementId, int ExperiencePoints, bool InHof)
        {
            MonsterDAL InsertDAL;
            InsertDAL = new MonsterDAL(MonsterId, UserId, ElementId, ExperiencePoints, inHof);

        }

        public List<Monster> ReturnMonsters(int UserId)
        {
            MonsterDAL obj = new MonsterDAL();
            DataTable dt = obj.ReturnMonsters(UserId);
            List<Monster> oMonsters = new List<Monster>();
            IEnumerable<DataRow> orow = dt.AsEnumerable();
            foreach (orow in dt.Rows)
            {
                oMonsters.obj._monsterId = Convert.ToInt32(orow["t01_monsterId"]);
                oMonsters.UserId = Convert.ToInt32(orow["t01_userId"]);
                oMonsters.ElementId = Convert.ToString(orow["t01_elementId"]);
                oMonsters.ExperiencePoints = Convert.ToInt32(orow["t01_experiencepoints"]);
                oMonsters.MonsterName = Convert.ToString(orow["t01_monstername"]);
                oMonsters.inHof = Convert.ToString(orow["t01_inHof"]);
            }
            return oMonsters;

        }
    }
}
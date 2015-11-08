using ActiveVideoGame.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ActiveVideoGame.BLL
{
    public class Challenge
    {
        int _userId, _opponentId, _minXP, _maxXP;

        public Challenge()
        {

        }

        public Challenge(int UserId, int OpponentId, int minXP, int maxXP)
        {
            BattleDAL InsertChallenge;
            InsertChallenge = new BattleDAL(UserId, OpponentId, minXP, maxXP);

        }

        public DataTable ViewChallenge(int UserID, )
    }


}
package com.badr.infodota.match.service.team;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import com.badr.infodota.BeanContainer;
import com.badr.infodota.base.dao.DatabaseManager;
import com.badr.infodota.match.api.detailed.Team;
import com.badr.infodota.match.api.team.LogoUrlHolder;
import com.badr.infodota.match.dao.TeamDao;

/**
 * User: ABadretdinov
 * Date: 15.05.14
 * Time: 17:06
 */
public class TeamServiceImpl implements TeamService {
    private TeamDao teamDao;

    @Override
    public String getTeamLogo(Context context, long id) {
        LogoUrlHolder result = BeanContainer.getInstance().getSteamService().getTeamLogo(id);
        if (result != null) {
            return result.getUrl();
        }
        return null;
    }

    @Override
    public void saveTeam(Context context, Team team) {
        DatabaseManager manager = DatabaseManager.getInstance(context);
        SQLiteDatabase database = manager.openDatabase();
        try {
            teamDao.saveOrUpdate(database, team);
        } finally {
            manager.closeDatabase();
        }
    }

    @Override
    public Team getTeamById(Context context, long id) {
        DatabaseManager manager = DatabaseManager.getInstance(context);
        SQLiteDatabase database = manager.openDatabase();
        try {
            return teamDao.getById(database, id);
        } finally {
            manager.closeDatabase();
        }
    }

    @Override
    public void initialize() {
        BeanContainer container = BeanContainer.getInstance();
        teamDao = container.getTeamDao();
    }
}

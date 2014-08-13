/**
 * 
 */
package com.plac.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plac.dao.TeamDao;
import com.plac.model.Team;
import com.plac.service.TeamSvc;

/**
 * @author wxy
 * @version 2014-6-17 下午4:49:48
 */
@Service
public class TeamSvcI implements TeamSvc {

	/* (non-Javadoc)
	 * @see com.plac.service.TeamSvc#add(com.plac.model.Team)
	 */
	@Autowired
	private TeamDao teamDao;
	
	@Override
	public void add(Team team) {
		teamDao.saveOrUpdate(team);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.TeamSvc#del(java.lang.Integer)
	 */
	@Override
	public void del(Integer id) {
		teamDao.delById(id);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.TeamSvc#change(com.plac.model.Team)
	 */
	@Override
	public void update(Team team) {
		teamDao.update(team);

	}

	/* (non-Javadoc)
	 * @see com.plac.service.TeamSvc#find(java.lang.Integer)
	 */
	@Override
	public Team get(Integer id) {
		return teamDao.get(Team.class, id);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.TeamSvc#list()
	 */
	@Override
	public List<Team> list() {
		return teamDao.find("from Team");
	}

	/* (non-Javadoc)
	 * @see com.plac.service.TeamSvc#getBySign(java.lang.String)
	 */
	@Override
	public Team getBySign(String sign) {
		String hql="from Team where sign=:sign";
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("sign", sign);
		return teamDao.get(hql, params);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.TeamSvc#getByName(java.lang.String)
	 */
	@Override
	public Team getByName(String name) {
		return teamDao.get("from Team where name='"+name+"'");
	}

}

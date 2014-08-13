/**
 * 
 */
package com.plac.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.plac.dao.TeamDao;
import com.plac.model.Team;

/**
 * @author wxy
 * @version 2014-6-17 下午4:23:28
 */
@Repository
public class TeamDaoI extends BaseDaoImpl<Team> implements TeamDao {


	/* (non-Javadoc)
	 * @see com.plac.dao.TeamDao#delById(java.lang.Integer)
	 */
	@Override
	public void delById(Integer id) {
		String hql = "delete from Team where id=:id";
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("id", id);
		super.executeHql(hql, params);
	}
	
	
}

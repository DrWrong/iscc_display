/**
 * 
 */
package com.plac.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.plac.dao.ManagerDao;
import com.plac.model.Manager;

/**
 * @author wxy
 * @version 2014-6-3 下午4:13:08
 */
@Repository
public class ManagerDaoI extends BaseDaoImpl<Manager> implements ManagerDao {

	/* (non-Javadoc)
	 * @see com.plac.dao.ManagerDao#getByName(java.lang.String)
	 */
	@Override
	public Manager getByName(String username) {
		String hql="from Manager where username=:username";
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("username", username);
		return get(hql, params);
	}

}

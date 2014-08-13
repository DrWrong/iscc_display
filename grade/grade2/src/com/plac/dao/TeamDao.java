/**
 * 
 */
package com.plac.dao;

import com.plac.model.Team;

/**
 * @author wxy
 * @version 2014-6-17 下午4:22:32
 */
public interface TeamDao extends BaseDao<Team> {
		
	
	public void delById(Integer id);
}

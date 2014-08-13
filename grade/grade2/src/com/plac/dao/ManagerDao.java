/**
 * 
 */
package com.plac.dao;

import com.plac.model.Manager;

/**
 * @author wxy
 * @version 2014-6-3 下午4:12:34
 */
public interface ManagerDao extends BaseDao<Manager> {
	
	public Manager getByName(String name);
	
}

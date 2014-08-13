/**
 * 
 */
package com.plac.service;

import com.plac.model.Manager;

/**
 * @author wxy
 * @version 2014-6-3 下午4:14:30
 */
public interface ManagerSvc {
	
	/**
	 * 管理员登陆操作
	 * @param m
	 * @return
	 */
	public boolean login(Manager m);
	
}

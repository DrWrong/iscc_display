/**
 * 
 */
package com.plac.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plac.dao.ManagerDao;
import com.plac.model.Manager;
import com.plac.service.ManagerSvc;
import com.plac.util.MD5Util;

/**
 * @author wxy
 * @version 2014-6-3 下午4:15:34
 */
@Service
public class ManagerSvcI implements ManagerSvc {
	
	
	@Autowired
	private ManagerDao managerDao;
	

	/* (non-Javadoc)
	 * @see com.plac.service.ManagerSvc#login(com.plac.model.Manager)
	 */
	@Override
	public boolean login(Manager m) {
		Manager m1 = managerDao.getByName(m.getUsername());
		if(m1!=null&&m1.getPassword().equalsIgnoreCase(MD5Util.md5(m.getPassword())))
			return true;
		return false;
	}

}

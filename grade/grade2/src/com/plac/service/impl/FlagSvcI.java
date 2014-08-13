/**
 * 
 */
package com.plac.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plac.dao.FlagDao;
import com.plac.model.Flag;
import com.plac.service.FlagSvc;

/**
 * @author wxy
 * @version 2014-7-30 上午11:03:39
 */
@Service
public class FlagSvcI implements FlagSvc {
	
	@Autowired
	private FlagDao flagDao;

	/* (non-Javadoc)
	 * @see com.plac.service.FlagSvc#save(com.plac.model.Flag)
	 */
	@Override
	public void save(Flag flag) {
		flagDao.saveOrUpdate(flag);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.FlagSvc#delById(java.lang.Integer)
	 */
	@Override
	public void delById(Integer id) {
		Flag flag = this.getById(id);
		flagDao.delete(flag);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.FlagSvc#getById(java.lang.Integer)
	 */
	@Override
	public Flag getById(Integer id) {
		return flagDao.get(Flag.class, id);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.FlagSvc#findAll()
	 */
	@Override
	public List<Flag> findAll() {
		return flagDao.find("from Flag");
	}


}

/**
 * 
 */
package com.plac.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plac.dao.LogDao;
import com.plac.model.Log;
import com.plac.service.LogSvc;

/**
 * @author wxy
 * @version 2014-8-11 上午11:56:34
 */
@Service
public class LogSvcI implements LogSvc {

	@Autowired
	private LogDao logDao;
	/* (non-Javadoc)
	 * @see com.plac.service.LogSvc#add(com.plac.model.Log)
	 */
	@Override
	public void add(Log log) {
		logDao.save(log);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.LogSvc#findAll()
	 */
	@Override
	public List<Log> findAll() {
		return logDao.find("from Log");
	}

}

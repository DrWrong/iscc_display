/**
 * 
 */
package com.plac.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plac.dao.HostDao;
import com.plac.model.Hosts;
import com.plac.service.HostSvc;

/**
 * @author wxy
 * @version 2014-7-29 上午10:34:16
 */
@Service
public class HostsSvcI implements HostSvc {
	
	@Autowired
	private HostDao hostDao;
	

	/* (non-Javadoc)
	 * @see com.plac.service.HostSvc#save(com.plac.model.Hosts)
	 */
	@Override
	public void save(Hosts host) {
		hostDao.saveOrUpdate(host);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.HostSvc#del(java.lang.Integer)
	 */
	@Override
	public void del(Integer id) {
		Hosts host = this.getById(id);
		hostDao.delete(host);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.HostSvc#change(com.plac.model.Hosts)
	 */
	@Override
	public void change(Hosts host) {
		hostDao.update(host);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.HostSvc#list()
	 */
	@Override
	public List<Hosts> findAll() {
		return hostDao.find("from Hosts");
	}

	@Override
	public Hosts getById(Integer id) {
		return hostDao.get(Hosts.class, id);
	}
	
	@Override
	public Hosts getByIp(String ip){
		return hostDao.get("from Hosts where ip='"+ip+"'");
	}

}

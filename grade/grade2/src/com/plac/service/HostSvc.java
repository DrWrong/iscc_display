/**
 * 
 */
package com.plac.service;

import java.util.List;

import com.plac.model.Hosts;

/**
 * @author wxy
 * @version 2014-7-29 上午10:31:54
 */
public interface HostSvc {
	
	public void save(Hosts host);
	
	public void del(Integer id);
	
	public void change(Hosts host);
	
	public List<Hosts> findAll();
	
	public Hosts getById(Integer id);
	
	public Hosts getByIp(String ip);
	
}

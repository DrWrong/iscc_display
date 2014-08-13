/**
 * 
 */
package com.plac.service;

import java.util.List;

import com.plac.model.Team;

/**
 * @author wxy
 * @version 2014-6-17 下午4:39:31
 */
public interface TeamSvc {
	
	public void add(Team team);
	
	public void del(Integer id);
	
	public void update(Team team);
	
	public Team get(Integer id);
	
	public List<Team> list();
	
	public Team getBySign(String sign);
	
	public Team getByName(String name);
}

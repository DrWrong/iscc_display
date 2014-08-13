/**
 * 
 */
package com.plac.service;

import java.util.List;

import com.plac.model.User;

/**
 * @author wxy
 * @version 2014-6-27 下午5:00:18
 */
public interface UserSvc {
	
	public void add(User u);
	
	public void del(Integer id);
	
	public void update(User u);
	
	public User getById(Integer id);
	
	public List<User> list();
	
	public User login(String username,String password);
	
}

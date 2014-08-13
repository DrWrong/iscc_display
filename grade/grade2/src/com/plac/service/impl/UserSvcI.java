/**
 * 
 */
package com.plac.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plac.dao.UserDao;
import com.plac.model.Team;
import com.plac.model.User;
import com.plac.service.UserSvc;

/**
 * @author wxy
 * @version 2014-6-27 下午5:04:12
 */
@Service
public class UserSvcI implements UserSvc {

	@Autowired
	private UserDao userDao;
	/* (non-Javadoc)
	 * @see com.plac.service.UserSvc#add(com.plac.model.User)
	 */
	@Override
	public void add(User u) {
		userDao.save(u);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.UserSvc#del(com.plac.model.User)
	 */
	@Override
	public void del(Integer id) {
		User u = userDao.get(User.class, id);
		userDao.delete(u);

	}

	/* (non-Javadoc)
	 * @see com.plac.service.UserSvc#update(com.plac.model.User)
	 */
	@Override
	public void update(User u) {
		userDao.saveOrUpdate(u);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.UserSvc#getById(java.lang.Integer)
	 */
	@Override
	public User getById(Integer id) {
		return userDao.get(User.class, id);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.UserSvc#list()
	 */
	@Override
	public List<User> list() {
		return userDao.find("from User");
	}

	/* (non-Javadoc)
	 * @see com.plac.service.UserSvc#login(java.lang.String, java.lang.String)
	 */
	@Override
	public User login(String username, String password) {
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("username", username);
		params.put("password", password);
		String hql="from User where username=:username and password=:password";
		return userDao.get(hql, params);
	}
}

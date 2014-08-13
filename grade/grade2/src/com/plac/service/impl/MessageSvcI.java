/**
 * 
 */
package com.plac.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plac.dao.MessageDao;
import com.plac.model.Message;
import com.plac.service.MessageSvc;

/**
 * @author wxy
 * @version 2014-8-3 下午2:28:01
 */
@Service
public class MessageSvcI implements MessageSvc {
	
	@Autowired
	private MessageDao mDao;

	/* (non-Javadoc)
	 * @see com.plac.service.MessageSvc#save(com.plac.model.Message)
	 */
	@Override
	public void save(Message m) {
		mDao.save(m);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.MessageSvc#delById(java.lang.Integer)
	 */
	@Override
	public void delById(Integer id) {
		Message m = this.getById(id);
		mDao.delete(m);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.MessageSvc#getById(java.lang.Integer)
	 */
	@Override
	public Message getById(Integer id) {
		return mDao.get(Message.class, id);
	}

	/* (non-Javadoc)
	 * @see com.plac.service.MessageSvc#findAll()
	 */
	@Override
	public List<Message> findAll() {
		return mDao.find("from Message");
	}

}

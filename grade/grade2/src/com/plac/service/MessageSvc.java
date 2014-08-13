/**
 * 
 */
package com.plac.service;

import java.util.List;

import com.plac.model.Message;

/**
 * @author wxy
 * @version 2014-8-3 下午2:25:33
 */
public interface MessageSvc {
	
	public void save(Message m);
	
	public void delById(Integer id);
	
	public Message getById(Integer id);
	
	public List<Message> findAll();
}

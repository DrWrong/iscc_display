/**
 * 
 */
package com.plac.service;

import java.util.List;

import com.plac.model.Log;

/**
 * @author wxy
 * @version 2014-8-11 上午11:54:40
 */
public interface LogSvc {
	
	public void add(Log log);
	
	public List<Log> findAll();
}

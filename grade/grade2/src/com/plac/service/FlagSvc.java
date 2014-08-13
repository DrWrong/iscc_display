/**
 * 
 */
package com.plac.service;

import java.util.List;

import com.plac.model.Flag;

/**
 * @author wxy
 * @version 2014-7-30 上午11:02:02
 */
public interface FlagSvc {
	
	public void save(Flag flag);
	
	public void delById(Integer id);
	
	public Flag getById(Integer id);
	
	public List<Flag> findAll();
	
}

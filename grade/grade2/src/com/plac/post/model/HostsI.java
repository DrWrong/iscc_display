/**
 * 
 */
package com.plac.post.model;

import com.plac.model.Hosts;

/**
 * @author wxy
 * @version 2014-8-5 上午11:13:16
 */
public class HostsI {
	
	private Integer id;
	private Integer tid;
	
	
	/**
	 * @param id
	 * @param tid
	 */
	public HostsI(Integer id, Integer tid) {
		super();
		this.id = id;
		this.tid = tid;
	}
	
	public HostsI(Hosts h){
		this.id=h.getId();
		this.tid=h.getTeam()==null?0:h.getTeam().getId();
		
	}
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	
	
	
}

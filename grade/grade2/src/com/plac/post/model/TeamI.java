/**
 * 
 */
package com.plac.post.model;

import com.plac.model.Team;

/**
 * @author wxy
 * @version 2014-8-5 上午11:17:03
 */
public class TeamI {
	
	private Integer id;
	private Integer score;
	
	
	
	/**
	 * @param id
	 * @param score
	 */
	public TeamI(Integer id, Integer score) {
		super();
		this.id = id;
		this.score = score;
	}
	
	
	/**
	 * 
	 */
	public TeamI(Team t) {
		super();
		this.id=t.getId();
		this.score=t.getHosts().size()*100;
	}


	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	
	

}

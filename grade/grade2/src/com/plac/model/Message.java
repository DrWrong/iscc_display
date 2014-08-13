/**
 * 
 */
package com.plac.model;

/**
 * @author wxy
 * @version 2014-8-3 下午1:38:18
 */
public class Message {
	
	private Integer id;
	private String ctime;
	private String content;
	
	public Message(){}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public String getCtime() {
		return ctime;
	}

	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	
	
}

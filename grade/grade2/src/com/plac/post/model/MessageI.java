/**
 * 
 */
package com.plac.post.model;

import com.plac.model.Message;

/**
 * @author wxy
 * @version 2014-8-5 上午11:18:46
 */
public class MessageI {
	
	private String time;
	
	private String content;

	
	
	/**
	 * @param time
	 * @param content
	 */
	public MessageI(String time, String content) {
		super();
		this.time = time;
		this.content = content;
	}

	public MessageI(Message m){
		this.time = m.getCtime();
		this.content = m.getContent();
		
	}
	
	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
}

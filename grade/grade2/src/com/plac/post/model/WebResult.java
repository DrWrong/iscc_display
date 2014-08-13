/**
 * 
 */
package com.plac.post.model;

import java.util.ArrayList;
import java.util.List;


/**
 * @author wxy
 * @version 2014-8-5 上午10:58:58
 */
public class WebResult {
	
	
	private List<TeamI> teams = new ArrayList<TeamI>(0);
	
	private List<HostsI> hosts = new ArrayList<HostsI>(0);
	
	private List<MessageI> messages = new ArrayList<MessageI>(0);

	/**
	 * @param teams
	 * @param hosts
	 * @param messages
	 */
	public WebResult(List<TeamI> teams, List<HostsI> hosts, List<MessageI> messages) {
		super();
		this.teams = teams;
		this.hosts = hosts;
		this.messages = messages;
	}

	public List<TeamI> getTeams() {
		return teams;
	}

	public void setTeams(List<TeamI> teams) {
		this.teams = teams;
	}

	public List<HostsI> getHosts() {
		return hosts;
	}

	public void setHosts(List<HostsI> hosts) {
		this.hosts = hosts;
	}

	public List<MessageI> getMessages() {
		return messages;
	}

	public void setMessages(List<MessageI> messages) {
		this.messages = messages;
	}

	
}

package com.plac.model;

/**
 * Hosts entity. @author MyEclipse Persistence Tools
 */

public class Hosts implements java.io.Serializable {

	// Fields

	private Integer id;
	private Flag flag;
	private String name;
	private String ip;
	private Team team;

	// Constructors

	/** default constructor */
	public Hosts() {
	}

	/** minimal constructor */
	public Hosts(String name, String ip) {
		this.name = name;
		this.ip = ip;
	}

	/** full constructor */
	public Hosts(Flag flag, String name, String ip) {
		this.flag = flag;
		this.name = name;
		this.ip = ip;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Flag getFlag() {
		return this.flag;
	}

	public void setFlag(Flag flag) {
		this.flag = flag;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIp() {
		return this.ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

}
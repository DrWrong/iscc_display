package com.plac.model;

import java.util.HashSet;
import java.util.Set;

import com.plac.util.MD5Util;

/**
 * Team entity. @author MyEclipse Persistence Tools
 */

public class Team implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String sign=MD5Util.md5(String.valueOf(System.currentTimeMillis())).substring(3, 10);
	private String logoPath="";
	private Set userses = new HashSet(0);
	private Set  hosts = new HashSet(0);
	// Constructors

	/** default constructor */
	public Team() {
	}

	/** minimal constructor */
	public Team(String name, String sign) {
		this.name = name;
		this.sign = sign;
	}

	/** full constructor */
	public Team(String name, String sign, String logoPath, Set userses) {
		this.name = name;
		this.sign = sign;
		this.logoPath = logoPath;
		this.userses = userses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSign() {
		return this.sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public String getLogoPath() {
		return this.logoPath;
	}

	public void setLogoPath(String logoPath) {
		this.logoPath = logoPath;
	}

	public Set getUserses() {
		return this.userses;
	}

	public void setUserses(Set userses) {
		this.userses = userses;
	}

	public Set getHosts() {
		return hosts;
	}

	public void setHosts(Set hosts) {
		this.hosts = hosts;
	}
	
}
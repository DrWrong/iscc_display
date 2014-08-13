package com.plac.model;

/**
 * Log entity. @author MyEclipse Persistence Tools
 */

public class Log implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer tid;
	private Integer hid;
	private String isok;

	// Constructors

	/** default constructor */
	public Log() {
	}

	/** full constructor */
	public Log(Integer tid, Integer hid, String isok) {
		this.tid = tid;
		this.hid = hid;
		this.isok = isok;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public Integer getHid() {
		return this.hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public String getIsok() {
		return this.isok;
	}

	public void setIsok(String isok) {
		this.isok = isok;
	}

}
package com.plac.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Flag entity. @author MyEclipse Persistence Tools
 */

public class Flag implements java.io.Serializable {

	// Fields

	private Integer id;
	private String value;
	private Set hostses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Flag() {
	}

	/** minimal constructor */
	public Flag(String value) {
		this.value = value;
	}

	/** full constructor */
	public Flag(String value, Set hostses) {
		this.value = value;
		this.hostses = hostses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Set getHostses() {
		return this.hostses;
	}

	public void setHostses(Set hostses) {
		this.hostses = hostses;
	}

}
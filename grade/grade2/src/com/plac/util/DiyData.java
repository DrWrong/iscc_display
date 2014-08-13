/**
 * 
 */
package com.plac.util;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * @author wxy
 * @version  2014-1-7 上午11:45:59
 */
public class DiyData extends TagSupport {

	private static final long serialVersionUID = 1L;
	
	private Long value=0l;
	
	private String formate = "yyyy-MM-dd HH:mm:ss";

	public void setValue(Long value) {
		this.value = value;
	}

	public void setFormate(String formate) {
		this.formate = formate;
	}
	
	@Override
	public int doStartTag() throws JspException{
		try {
			String now = new SimpleDateFormat(formate).format(value);
			pageContext.getOut().write(now);
		} catch (IOException e) {
//			e.printStackTrace();
		}
		return super.doStartTag();
	}
}

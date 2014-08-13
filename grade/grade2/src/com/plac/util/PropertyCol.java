/**
 * 
 */
package com.plac.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;

/**
 * @author wxy
 * @version 2014-2-27 下午4:03:36
 */
public class PropertyCol {
	
	public String getProperties(String p) {
		
		String path = getClass().getResource("/").getPath();
		Properties prop = new Properties();
		String v = null;
		try {
			BufferedInputStream buf = new BufferedInputStream(
					new FileInputStream(new File(path + "db.properties")));
			prop.load(buf);
			v = prop.getProperty(p);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return v;
	}
}

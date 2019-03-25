package org.bigjava.function;

import org.apache.struts2.ServletActionContext;

public class Param {
	
	/**
	 * 获取参数
	 * 
	 * @param key
	 * @return
	 */
	public String getParam(String key) {
		return ServletActionContext.getRequest().getParameter(key);
	}
	

}

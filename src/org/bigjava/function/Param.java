package org.bigjava.function;

import org.apache.struts2.ServletActionContext;

public class Param {
	
	/**
	 * ��ȡ����
	 * 
	 * @param key
	 * @return
	 */
	public String getParam(String key) {
		return ServletActionContext.getRequest().getParameter(key);
	}
	

}

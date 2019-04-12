package org.bigjava.notice.entity;

import java.util.Date;

public class IndexNotice {
	
	private int indexId;
	private String indexNaticeTitle;
	private String indexNatice;
	private Date indexNaticeTime;
	
	public String getIndexNaticeTitle() {
		return indexNaticeTitle;
	}
	public void setIndexNaticeTitle(String indexNaticeTitle) {
		this.indexNaticeTitle = indexNaticeTitle;
	}
	public int getIndexId() {
		return indexId;
	}
	public void setIndexId(int indexId) {
		this.indexId = indexId;
	}
	public String getIndexNatice() {
		return indexNatice;
	}
	public void setIndexNatice(String indexNatice) {
		this.indexNatice = indexNatice;
	}
	public Date getIndexNaticeTime() {
		return indexNaticeTime;
	}
	public void setIndexNaticeTime(Date indexNaticeTime) {
		this.indexNaticeTime = indexNaticeTime;
	}
}

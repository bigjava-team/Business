package org.bigjava.notice.entity;

import java.util.Date;

public class IndexNotice {
	
	private int indexNoticeId;
	private String indexNoticeTitle;
	private String indexNotice;
	private Date indexNoticeTime;
	
	public int getIndexNoticeId() {
		return indexNoticeId;
	}
	public void setIndexNoticeId(int indexNoticeId) {
		this.indexNoticeId = indexNoticeId;
	}
	public String getIndexNoticeTitle() {
		return indexNoticeTitle;
	}
	public void setIndexNoticeTitle(String indexNoticeTitle) {
		this.indexNoticeTitle = indexNoticeTitle;
	}
	public String getIndexNotice() {
		return indexNotice;
	}
	public void setIndexNotice(String indexNotice) {
		this.indexNotice = indexNotice;
	}
	public Date getIndexNoticeTime() {
		return indexNoticeTime;
	}
	public void setIndexNoticeTime(Date indexNoticeTime) {
		this.indexNoticeTime = indexNoticeTime;
	}
	@Override
	public String toString() {
		return "IndexNotice [indexNoticeId=" + indexNoticeId + ", indexNoticeTitle=" + indexNoticeTitle
				+ ", indexNotice=" + indexNotice + ", indexNoticeTime=" + indexNoticeTime + "]";
	}
}

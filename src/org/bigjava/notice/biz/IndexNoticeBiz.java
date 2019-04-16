package org.bigjava.notice.biz;

import java.util.List;

import org.bigjava.notice.entity.IndexNotice;

public interface IndexNoticeBiz {

	/**
	 * 添加公告
	 * @param notice
	 */
	public void addIndexNotice(IndexNotice notice);

	/**
	 * 修改公告
	 * @param notice
	 */
	public void updateIndexNotice(IndexNotice notice);
	
	/**
	 * 查看公告
	 * @return
	 */
	public List<IndexNotice> queryListIndexNotice();
	
	/**
	 * 通过公告id获取公告内容
	 * @return
	 */
	public IndexNotice idQueryIndexNotice(int indexNoticeId);
}

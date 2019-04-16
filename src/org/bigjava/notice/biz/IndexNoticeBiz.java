package org.bigjava.notice.biz;

import java.util.List;

import org.bigjava.notice.entity.IndexNotice;

public interface IndexNoticeBiz {

	/**
	 * ��ӹ���
	 * @param notice
	 */
	public void addIndexNotice(IndexNotice notice);

	/**
	 * �޸Ĺ���
	 * @param notice
	 */
	public void updateIndexNotice(IndexNotice notice);
	
	/**
	 * �鿴����
	 * @return
	 */
	public List<IndexNotice> queryListIndexNotice();
	
	/**
	 * ͨ������id��ȡ��������
	 * @return
	 */
	public IndexNotice idQueryIndexNotice(int indexNoticeId);
}

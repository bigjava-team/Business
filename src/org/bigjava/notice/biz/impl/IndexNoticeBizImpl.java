package org.bigjava.notice.biz.impl;

import java.util.List;

import org.bigjava.notice.biz.IndexNoticeBiz;
import org.bigjava.notice.dao.IndexNoticeDao;
import org.bigjava.notice.entity.IndexNotice;

public class IndexNoticeBizImpl implements IndexNoticeBiz {
	
	private IndexNoticeDao indexNoticeDao;

	public void setIndexNoticeDao(IndexNoticeDao indexNoticeDao) {
		this.indexNoticeDao = indexNoticeDao;
	}

	// ��ӹ���
	@Override
	public void addIndexNotice(IndexNotice notice) {
		indexNoticeDao.addIndexNotice(notice);
	}

	// �޸Ĺ���
	@Override
	public void updateIndexNotice(IndexNotice notice) {
		indexNoticeDao.updateIndexNotice(notice);
	}

	// ɾ������
	@Override
	public List<IndexNotice> queryListIndexNotice() {
		return indexNoticeDao.queryListIndexNotice();
	}

	@Override
	public IndexNotice idQueryIndexNotice(int indexNoticeId) {
		return indexNoticeDao.idQueryIndexNotice(indexNoticeId);
	}

}

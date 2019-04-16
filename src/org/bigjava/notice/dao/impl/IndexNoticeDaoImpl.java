package org.bigjava.notice.dao.impl;

import java.util.List;

import org.bigjava.notice.dao.IndexNoticeDao;
import org.bigjava.notice.entity.IndexNotice;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class IndexNoticeDaoImpl extends HibernateDaoSupport implements IndexNoticeDao {

	// ��ӹ���
	@Override
	public void addIndexNotice(IndexNotice notice) {
		this.getHibernateTemplate().save(notice);
	}

	// �޸Ĺ���
	@Override
	public void updateIndexNotice(IndexNotice notice) {
		this.getHibernateTemplate().merge(notice);
	}

	// ��ѯ����
	@Override
	public List<IndexNotice> queryListIndexNotice() {
		List<IndexNotice> notice = this.getHibernateTemplate().find("from IndexNotice");
		return notice;
	}

	// ͨ������id��ȡ��������
	@Override
	public IndexNotice idQueryIndexNotice(int indexNoticeId) {
		return this.getHibernateTemplate().get(IndexNotice.class, indexNoticeId);
	}

}

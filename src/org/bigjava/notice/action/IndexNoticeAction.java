package org.bigjava.notice.action;

import java.util.Date;
import java.util.List;

import org.bigjava.notice.biz.IndexNoticeBiz;
import org.bigjava.notice.entity.IndexNotice;
import org.bigjava.user.entity.User;

public class IndexNoticeAction {
	
	// ��¼���û�
	private User loginUser;
	// ��ҳ������
	private IndexNotice indexNotice;
	
	private List<IndexNotice> listIndexNotice;
	
	private IndexNoticeBiz indexNoticeBiz;
	
	public IndexNotice getIndexNotice() {
		return indexNotice;
	}
	public void setIndexNotice(IndexNotice indexNotice) {
		this.indexNotice = indexNotice;
	}
	public User getLoginUser() {
		return loginUser;
	}
	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}
	public List<IndexNotice> getListIndexNotice() {
		return listIndexNotice;
	}
	public void setListIndexNotice(List<IndexNotice> listIndexNotice) {
		this.listIndexNotice = listIndexNotice;
	}
	public void setIndexNoticeBiz(IndexNoticeBiz indexNoticeBiz) {
		this.indexNoticeBiz = indexNoticeBiz;
	}

	// �鿴��ҳ����
	public String queryIndexNotice() {
		System.out.println("��ʼ��ѯ��ҳ����");
		listIndexNotice = indexNoticeBiz.queryListIndexNotice();
		return "queryIndexNotice";
	}

	// �����ҳ����
	public String addIndexNotice() {
		System.out.println("��ʼ�����ҳ����" + indexNotice);
		indexNotice.setIndexNoticeTime(new Date());
		indexNoticeBiz.addIndexNotice(indexNotice);
		return "addIndexNotice";
	}
	
	// �޸���ҳ����
	public String updateIndexNotice() {
		System.out.println("�޸���ҳ����");
		IndexNotice indexNotice2 = indexNoticeBiz.idQueryIndexNotice(indexNotice.getIndexNoticeId());
		indexNotice2.setIndexNoticeTitle(indexNotice.getIndexNoticeTitle());
		indexNotice2.setIndexNotice(indexNotice.getIndexNotice());
		indexNotice2.setIndexNoticeTime(new Date());
		indexNoticeBiz.updateIndexNotice(indexNotice);
		return "updateIndexNotice";
	}
	
	// ͨ������id��ѯ����
	public String indexNoticIdQueryIndexNotic(){
		System.out.println("��ѯ��������");
		indexNotice = indexNoticeBiz.idQueryIndexNotice(indexNotice.getIndexNoticeId());
		return "indexNoticIdQueryIndexNotic";
	}
}

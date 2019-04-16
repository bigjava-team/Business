package org.bigjava.notice.action;

import java.util.Date;
import java.util.List;

import org.bigjava.notice.biz.IndexNoticeBiz;
import org.bigjava.notice.entity.IndexNotice;
import org.bigjava.user.entity.User;

public class IndexNoticeAction {
	
	// 登录的用户
	private User loginUser;
	// 首页公告类
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

	// 查看首页公告
	public String queryIndexNotice() {
		System.out.println("开始查询首页公告");
		listIndexNotice = indexNoticeBiz.queryListIndexNotice();
		return "queryIndexNotice";
	}

	// 添加首页公告
	public String addIndexNotice() {
		System.out.println("开始添加首页公告" + indexNotice);
		indexNotice.setIndexNoticeTime(new Date());
		indexNoticeBiz.addIndexNotice(indexNotice);
		return "addIndexNotice";
	}
	
	// 修改首页公告
	public String updateIndexNotice() {
		System.out.println("修改首页公告");
		IndexNotice indexNotice2 = indexNoticeBiz.idQueryIndexNotice(indexNotice.getIndexNoticeId());
		indexNotice2.setIndexNoticeTitle(indexNotice.getIndexNoticeTitle());
		indexNotice2.setIndexNotice(indexNotice.getIndexNotice());
		indexNotice2.setIndexNoticeTime(new Date());
		indexNoticeBiz.updateIndexNotice(indexNotice);
		return "updateIndexNotice";
	}
	
	// 通过公告id查询公告
	public String indexNoticIdQueryIndexNotic(){
		System.out.println("查询公告内容");
		indexNotice = indexNoticeBiz.idQueryIndexNotice(indexNotice.getIndexNoticeId());
		return "indexNoticIdQueryIndexNotic";
	}
}

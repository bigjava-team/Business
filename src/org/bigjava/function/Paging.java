package org.bigjava.function;

public class Paging {
	
	private int page;//	��ҳ��
	private int pagesize;// ÿҳ��ʾ������
	private int start;// ��������ʼ��
	private int presentPage;// ��ǰҳ��
	private int totalNumber;// ������
	
	public Paging() {
	}

	public Paging(int _presentPage, int _totalNumber, int _pagesize) {
		this.pagesize = _pagesize;// ��ȡ��ʾ����
		this.totalNumber = _totalNumber;// ��ȡ������
		this.page = this.totalNumber%pagesize!=0 ? (this.totalNumber/pagesize) + 1 : this.totalNumber/pagesize;// ��ȡ��ҳ��
		this.presentPage = _presentPage;// ��ȡ��ǰҳ��
		if (this.presentPage < 1)// �жϵ�ǰҳ����С��1
			this.presentPage = 1;
		else if (this.presentPage > this.page)// �жϵ�ǰҳ���ܴ�����ҳ��
			this.presentPage = this.page;
		this.start = (this.presentPage - 1)*this.pagesize;// ��ȡ����һҳ��ʼ��
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getPresentPage() {
		return presentPage;
	}
	public void setPresentPage(int presentPage) {
		this.presentPage = presentPage;
	}
	public int getTotalNumber() {
		return totalNumber;
	}
	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}

	@Override
	public String toString() {
		return "Paging [page=" + page + ", pagesize=" + pagesize + ", start=" + start + ", presentPage=" + presentPage
				+ ", totalNumber=" + totalNumber + "]";
	}
}

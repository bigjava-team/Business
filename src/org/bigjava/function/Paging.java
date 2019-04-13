package org.bigjava.function;

public class Paging {
	
	private int page;//	总页数
	private int pagesize;// 每页显示多少条
	private int start;// 从哪条开始查
	private int presentPage;// 当前页数
	private int totalNumber;// 总条数
	
	public Paging() {
	}

	public Paging(int _presentPage, int _totalNumber, int _pagesize) {
		this.pagesize = _pagesize;// 获取显示条数
		this.totalNumber = _totalNumber;// 获取总条数
		this.page = this.totalNumber%pagesize!=0 ? (this.totalNumber/pagesize) + 1 : this.totalNumber/pagesize;// 获取总页数
		this.presentPage = _presentPage;// 获取当前页数
		if (this.presentPage < 1)// 判断当前页不能小于1
			this.presentPage = 1;
		else if (this.presentPage > this.page)// 判断当前页不能大于总页数
			this.presentPage = this.page;
		this.start = (this.presentPage - 1)*this.pagesize;// 获取从哪一页开始查
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

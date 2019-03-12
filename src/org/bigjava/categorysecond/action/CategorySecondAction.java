package org.bigjava.categorysecond.action;

import org.apache.struts2.ServletActionContext;
import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * ��̨��������Ĺ����Action.
 */
public class CategorySecondAction extends ActionSupport implements ModelDriven<CategorySecond> {

	// ע��categorysecond,categoryʵ��
	private CategorySecond categorySecond = new CategorySecond();
	private Category category = new Category();
	private Paging page = new Paging();
	// ע��categorysecondbiz
	private CategorySecondBiz categorySecondBiz;

	// ǰ̨�����ֵ
	private String searchCategorySecond;

	public String getSearchCategorySecond() {
		return searchCategorySecond;
	}

	public void setSearchCategorySecond(String searchCategorySecond) {
		this.searchCategorySecond = searchCategorySecond;
	}

	public void setCategorySecondBiz(CategorySecondBiz categorySecondBiz) {
		this.categorySecondBiz = categorySecondBiz;
	}

	@Override
	public CategorySecond getModel() {
		return categorySecond;
	}

	/**
	 * ��ȡ����
	 * 
	 * @param key
	 * @return
	 */
	public String getParam(String key) {
		return ServletActionContext.getRequest().getParameter(key);
	}

	/**
	 * ��Ӷ�������
	 */
	public String saveCategorySecond() throws Exception {
		categorySecondBiz.saveCategorySecond(categorySecond, category);
		return "saveCategorySecondSuccess";
	}

	/**
	 * ɾ����������
	 */
	public String deleteCategorySecond() throws Exception {
		categorySecondBiz.deleteCategorySecond(categorySecond);
		return "deleteCategorySecondSuccess";
	}

	/**
	 * �޸Ķ�������
	 */
	public String editCategorySecond() throws Exception {
		
		CategorySecond updatecategorySecond = null; //�޸ĵĶ�������
		
		categorySecondBiz.updateCategorySecond(categorySecond, updatecategorySecond);
		return "editCategorySecondSuccess";
	}

	/**
	 * ͨ��id��ѯ��Ӧ�Ķ�������
	 */
	public String findCategorySecondById() throws Exception {
		categorySecondBiz.queryCategorySecond(categorySecond.getCs_id());
		return "findSuccess";
	}

	/**
	 * ģ����ҳ��ѯ���ж�������
	 */
	public String findAllBySearchName() throws Exception {

		// ��ȡ���������������
		int totalNumber = categorySecondBiz.queryCategorySecondNumber(searchCategorySecond);
		// ��ȡ��ǰҳ
		int pageNo = page.getPresentPage();

		Paging paging = new Paging(pageNo, totalNumber);

		categorySecondBiz.queryAllCategorySecond(searchCategorySecond, paging);
		return "findAllBySearchNameSuccess";
	}

}

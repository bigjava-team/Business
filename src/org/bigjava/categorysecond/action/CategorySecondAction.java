package org.bigjava.categorysecond.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.bigjava.category.biz.CategoryBiz;
import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;

import com.opensymphony.xwork2.ActionContext;
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
	private CategoryBiz categoryBiz;

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

	public void setCategoryBiz(CategoryBiz categoryBiz) {
		this.categoryBiz = categoryBiz;
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
	 * ��ת�����ҳ��ķ���:
	 * 
	 * @return
	 */
	public String addPage() {
		// ��ѯ����һ������.
		List<Category> c_List = categoryBiz.showAllCategory();
		// �����ϴ��뵽ֵջ��.
		ActionContext.getContext().getValueStack().set("c_List", c_List);
		// ҳ����ת:
		return "addPage";
	}

	/**
	 * ��Ӷ�������
	 */
	public String saveCategorySecond() {
//		//��ȡǰ̨һ�������ID��
//		String c_id = getParam("c_id");
//		int id = Integer.parseInt(c_id);
//		Category category = categoryBiz.queryCategoryById(id);
//		categorySecondBiz.saveCategorySecond(categorySecond, category);
		categorySecondBiz.saveCategorySecond(categorySecond);
		return "saveCategorySecondSuccess";
	}

	/**
	 * ɾ����������
	 */
	public String deleteCategorySecond() {
		categorySecondBiz.deleteCategorySecond(categorySecond);
		return "deleteCategorySecondSuccess";
	}

	/**
	 * �޸Ķ�������
	 */
	public String editCategorySecond() {

		CategorySecond updatecategorySecond = null; // �޸ĵĶ�������

		categorySecondBiz.updateCategorySecond(categorySecond, updatecategorySecond);
		return "editCategorySecondSuccess";
	}

	/**
	 * ͨ��id��ѯ��Ӧ�Ķ�������
	 */
	public String findCategorySecondById() {
		categorySecondBiz.queryCategorySecond(categorySecond.getCs_id());
		return "findSuccess";
	}

	/**
	 * ģ����ҳ��ѯ���ж�������
	 */
	public String findAllBySearchName() {

		// ��ȡ���������������
		int totalNumber = categorySecondBiz.queryCategorySecondNumber(searchCategorySecond);
		// ��ȡ��ǰҳ
		int pageNo = page.getPresentPage();

		Paging paging = new Paging(pageNo, totalNumber, 2);

		categorySecondBiz.queryAllCategorySecond(searchCategorySecond, paging);
		return "findAllBySearchNameSuccess";
	}

}

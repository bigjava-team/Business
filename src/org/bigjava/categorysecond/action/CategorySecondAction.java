package org.bigjava.categorysecond.action;

import java.util.List;

import org.bigjava.category.biz.CategoryBiz;
import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.function.Param;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * ��̨��������Ĺ����Action.
 */
public class CategorySecondAction extends ActionSupport implements ModelDriven<CategorySecond> {

	private Param param = new Param();
	// ע��categorysecond,categoryʵ��
	private CategorySecond categorySecond = new CategorySecond();
	private Category category = new Category();
	private Paging paging;
	// ע��categorysecondbiz
	private CategorySecondBiz categorySecondBiz;
	private CategoryBiz categoryBiz;
	// У��ֵ����Ϊ��
	private IsEmpty isEmpty = new IsEmpty();
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

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	@Override
	public CategorySecond getModel() {
		return categorySecond;
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
		System.out.println("����categorySecondAction.....findAll()..");
		if (isEmpty.isEmpty(searchCategorySecond)) {
			searchCategorySecond = "";
		}
		// ��ȡ���������������
		int totalNumber = categorySecondBiz.queryCategorySecondNumber(searchCategorySecond);
		// ��ȡ��ǰҳ
		int presentPage = paging.getPresentPage();
		System.out.println("��ǰҳ" + presentPage);

		Paging paging = new Paging(presentPage, totalNumber, 2);

		List<CategorySecond> categorySecond = categorySecondBiz.queryAllCategorySecond(searchCategorySecond, paging);
		//��ֵ����session��
		ActionContext.getContext().getSession().put("showCategorySecond",categorySecond );
		ActionContext.getContext().getSession().put("paging", paging);
		ActionContext.getContext().getSession().put("searchCategorySecond", searchCategorySecond);
		
		return "findAllBySearchNameSuccess";
	}

}

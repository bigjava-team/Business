package org.bigjava.category.action;

import org.bigjava.category.biz.CategoryBiz;
import org.bigjava.category.entity.Category;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CategoryAction extends ActionSupport implements ModelDriven<Category> {

	private Category category = new Category();
	private CategoryBiz categoryBiz;

	public void setCategoryBiz(CategoryBiz categoryBiz) {
		this.categoryBiz = categoryBiz;
	}

	@Override
	public Category getModel() {
		return category;
	}

	/**
	 * ���һ������
	 */
	public String addCategory() {
		categoryBiz.saveCategory(category);
		return "addCategorySuccess";
	}

	/**
	 * ɾ��һ������
	 */
	public String deleteCategory() {
		categoryBiz.deleteCategory(category);
		return "deleteCategorySuccess";
	}

	/**
	 * ��ѯȫ��һ������
	 */
	public String showCategory() {
		categoryBiz.showAllCategory();
		return "showCategorySuccess";
	}

	/**
	 * ͨ��id��ѯ��Ӧ��һ������
	 */
	public String findCategoryById() {
		categoryBiz.queryCategoryById(category.getC_id());
		return "findCategoryByIdSuccess";
	}

}

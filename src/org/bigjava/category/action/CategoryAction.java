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
	 * 添加一级分类
	 */
	public String addCategory() throws Exception {
		categoryBiz.saveCategory(category);
		return "addCategorySuccess";
	}

	/**
	 * 删除一级分类
	 */
	public String deleteCategory() throws Exception {
		categoryBiz.deleteCategory(category);
		return "deleteCategorySuccess";
	}

	/**
	 * 查询全部一级分类
	 */
	public String showCategory() throws Exception {
		categoryBiz.showAllCategory();
		return "showCategorySuccess";
	}
	
	/**
	 * 通过id查询对应的一级分类
	 */
	public String findCategoryById() throws Exception {
		categoryBiz.queryCategoryById(category.getC_id());
		return "findCategoryByIdSuccess";
	}

}

package org.bigjava.category.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.bigjava.category.biz.CategoryBiz;
import org.bigjava.category.entity.Category;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CategoryAction extends ActionSupport implements ModelDriven<Category> {

	private Category category = new Category();
	private CategoryBiz categoryBiz;

	/**
	 * ��ȡ����
	 * 
	 * @param key
	 * @return
	 */
	public String getParam(String key) {
		return ServletActionContext.getRequest().getParameter(key);
	}

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
		category = categoryBiz.queryCategoryById(category.getC_id());
		categoryBiz.deleteCategory(category);
		return "deleteCategorySuccess";
	}
	
	/**
	 * �޸�һ������
	 */
	public String updateCatergory() {
		Category updateCategory = new Category();
		updateCategory.setC_name(category.getC_name());
		
		category = categoryBiz.queryCategoryById(category.getC_id());
		
		categoryBiz.updateCategory(category, updateCategory);
		return "updateCategorySuccess";
	}
	
	/**
	 * ��ѯȫ��һ������
	 */
	public String showCategory() {
		System.out.println("categoryAction .... showCategory()....");
		List<Category> listCategory = categoryBiz.showAllCategory();
		ActionContext.getContext().getSession().put("showCategory", listCategory);
		return "showCategorySuccess";
	}

	/**
	 * ͨ��id��ѯ��Ӧ��һ������
	 */
	public String findCategoryById() {
		Category editCategory = categoryBiz.queryCategoryById(category.getC_id());
		ActionContext.getContext().getSession().put("editCategory", editCategory);
		return "findCategoryByIdSuccess";
	}

}

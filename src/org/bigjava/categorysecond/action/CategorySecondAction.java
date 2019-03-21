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
 * 后台二级分类的管理的Action.
 */
public class CategorySecondAction extends ActionSupport implements ModelDriven<CategorySecond> {

	// 注入categorysecond,category实体
	private CategorySecond categorySecond = new CategorySecond();
	private Category category = new Category();
	private Paging page = new Paging();
	// 注入categorysecondbiz
	private CategorySecondBiz categorySecondBiz;
	private CategoryBiz categoryBiz;

	// 前台输入的值
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
	 * 获取参数
	 * 
	 * @param key
	 * @return
	 */
	public String getParam(String key) {
		return ServletActionContext.getRequest().getParameter(key);
	}

	/**
	 * 跳转到天津页面的方法:
	 * 
	 * @return
	 */
	public String addPage() {
		// 查询所有一级分类.
		List<Category> c_List = categoryBiz.showAllCategory();
		// 将集合存入到值栈中.
		ActionContext.getContext().getValueStack().set("c_List", c_List);
		// 页面跳转:
		return "addPage";
	}

	/**
	 * 添加二级分类
	 */
	public String saveCategorySecond() {
//		//获取前台一级分类的ID；
//		String c_id = getParam("c_id");
//		int id = Integer.parseInt(c_id);
//		Category category = categoryBiz.queryCategoryById(id);
//		categorySecondBiz.saveCategorySecond(categorySecond, category);
		categorySecondBiz.saveCategorySecond(categorySecond);
		return "saveCategorySecondSuccess";
	}

	/**
	 * 删除二级分类
	 */
	public String deleteCategorySecond() {
		categorySecondBiz.deleteCategorySecond(categorySecond);
		return "deleteCategorySecondSuccess";
	}

	/**
	 * 修改二级分类
	 */
	public String editCategorySecond() {

		CategorySecond updatecategorySecond = null; // 修改的二级分类

		categorySecondBiz.updateCategorySecond(categorySecond, updatecategorySecond);
		return "editCategorySecondSuccess";
	}

	/**
	 * 通过id查询对应的二级分类
	 */
	public String findCategorySecondById() {
		categorySecondBiz.queryCategorySecond(categorySecond.getCs_id());
		return "findSuccess";
	}

	/**
	 * 模糊分页查询所有二级分类
	 */
	public String findAllBySearchName() {

		// 获取二级分类的总条数
		int totalNumber = categorySecondBiz.queryCategorySecondNumber(searchCategorySecond);
		// 获取当前页
		int pageNo = page.getPresentPage();

		Paging paging = new Paging(pageNo, totalNumber, 2);

		categorySecondBiz.queryAllCategorySecond(searchCategorySecond, paging);
		return "findAllBySearchNameSuccess";
	}

}

package org.bigjava.categorysecond.action;

import org.apache.struts2.ServletActionContext;
import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;

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
	 * 添加二级分类
	 */
	public String saveCategorySecond() throws Exception {
		categorySecondBiz.saveCategorySecond(categorySecond, category);
		return "saveCategorySecondSuccess";
	}

	/**
	 * 删除二级分类
	 */
	public String deleteCategorySecond() throws Exception {
		categorySecondBiz.deleteCategorySecond(categorySecond);
		return "deleteCategorySecondSuccess";
	}

	/**
	 * 修改二级分类
	 */
	public String editCategorySecond() throws Exception {
		
		CategorySecond updatecategorySecond = null; //修改的二级分类
		
		categorySecondBiz.updateCategorySecond(categorySecond, updatecategorySecond);
		return "editCategorySecondSuccess";
	}

	/**
	 * 通过id查询对应的二级分类
	 */
	public String findCategorySecondById() throws Exception {
		categorySecondBiz.queryCategorySecond(categorySecond.getCs_id());
		return "findSuccess";
	}

	/**
	 * 模糊分页查询所有二级分类
	 */
	public String findAllBySearchName() throws Exception {

		// 获取二级分类的总条数
		int totalNumber = categorySecondBiz.queryCategorySecondNumber(searchCategorySecond);
		// 获取当前页
		int pageNo = page.getPresentPage();

		Paging paging = new Paging(pageNo, totalNumber);

		categorySecondBiz.queryAllCategorySecond(searchCategorySecond, paging);
		return "findAllBySearchNameSuccess";
	}

}

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
 * 后台二级分类的管理的Action.
 */
public class CategorySecondAction extends ActionSupport implements ModelDriven<CategorySecond> {

	private Param param = new Param();
	// 注入categorysecond,category实体
	private CategorySecond categorySecond = new CategorySecond();
	private Category category = new Category();
	private Paging paging;
	// 注入categorysecondbiz
	private CategorySecondBiz categorySecondBiz;
	private CategoryBiz categoryBiz;
	// 校验值不能为空
	private IsEmpty isEmpty = new IsEmpty();
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
		System.out.println("进入categorySecondAction.....findAll()..");
		if (isEmpty.isEmpty(searchCategorySecond)) {
			searchCategorySecond = "";
		}
		// 获取二级分类的总条数
		int totalNumber = categorySecondBiz.queryCategorySecondNumber(searchCategorySecond);
		// 获取当前页
		int presentPage = paging.getPresentPage();
		System.out.println("当前页" + presentPage);

		Paging paging = new Paging(presentPage, totalNumber, 2);

		List<CategorySecond> categorySecond = categorySecondBiz.queryAllCategorySecond(searchCategorySecond, paging);
		//将值存入session中
		ActionContext.getContext().getSession().put("showCategorySecond",categorySecond );
		ActionContext.getContext().getSession().put("paging", paging);
		ActionContext.getContext().getSession().put("searchCategorySecond", searchCategorySecond);
		
		return "findAllBySearchNameSuccess";
	}

}

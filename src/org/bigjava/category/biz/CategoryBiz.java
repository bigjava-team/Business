package org.bigjava.category.biz;

import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.product.entity.Product;

/**
 * 管理员操作一级分类
 * @author Mr.Man
 *
 */
public interface CategoryBiz {
	
	/**
	 * 添加一级分类
	 */
	public void saveCategory(Category category);
	
	/**
	 * 查询全部一级分类
	 */
	public List<Category> showAllCategory();
	
	/**
	 * 通过ID查询一级分类
	 */
	public Category queryCategoryById(int c_id);
	
	/**
	 * 删除一级分类
	 */
	public void deleteCategory(Category category);
	
	/**
	 * 修改一级分类
	 */
	public void updateCategory(Category category, Category updateCategory);
	
	/**
	 * 通过一级分类id分页查询一级分类商品
	 */
	public List<Product> queryC_idCategoryProduct(int c_id,int presentPage);

}

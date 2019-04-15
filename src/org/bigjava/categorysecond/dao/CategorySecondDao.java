package org.bigjava.categorysecond.dao;

import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.function.queryCategorySecond.QueryAllCategorySecond;
import org.bigjava.product.entity.Product;

public interface CategorySecondDao {
	
	/**
	 * ��Ӷ�������
	 */
//	public void addCategorySecond(CategorySecond categorySecond, Category category);
	public void addCategorySecond(CategorySecond categorySecond);
	
	/**
	 * ģ����ҳ��ѯ���ж�������
	 */
	public List<CategorySecond> queryAllCategorySecond(String searchCategorySecond, Paging page);
	
	/**
	 * ģ����ѯ���������������
	 */
	public int queryCategorySecondNumber(String searchCategorySecond);
	
	/**
	 * ͨ��id��ѯ��Ӧ�Ķ�������
	 */
	public CategorySecond queryCategorySecond(int cs_id);
	
	/**
	 * ɾ����������
	 */
	public void deleteCategorySecond(CategorySecond categorySecond);
	
	/**
	 * �޸Ķ���������
	 * categorySecondΪ���ݿ��еĶ�����������
	 * updatecategorySecondΪ�޸ĵĶ�����������
	 * 
	 */
//	public void updateCategorySecond(CategorySecond categorySecond, CategorySecond updatecategorySecond);
	public void updateCategorySecond(CategorySecond categorySecond);
	
	/**
	 * ��ѯȫ����������
	 */
	public List<QueryAllCategorySecond> showCategorySecond();
	
	/**
	 * ��CategorySecond����ȫ���Ķ�������
	 */
	public List<CategorySecond> showAllCategorySecond();
	
	/**
	 * ��ҳ��ѯ���������Ӧ����Ʒ
	 */
	public List<Product> cs_idQueryAllCategorySecondProduct(int cs_id,int presentPage);
	
	/**
	 * ģ����ҳ��ѯ��Ʒ����
	 */
	public List<Product> searchTextQueryProduct(String searchText,int presentPage);
}

package org.bigjava.categorysecond.biz;

import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.function.queryCategorySecond.QueryAllCategorySecond;
import org.bigjava.product.entity.Product;

public interface CategorySecondBiz {

	/**
	 * ��Ӷ�������
	 */
//	public void saveCategorySecond(CategorySecond categorySecond, Category category);
	public void saveCategorySecond(CategorySecond categorySecond);

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
	 */
//	public void updateCategorySecond(CategorySecond categorySecond , CategorySecond updatecategorySecond);
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
	public List<Product> cs_idQueryAllCategorySecondProduct(int cs_id,Paging paging);
	
	/**
	 * ��ҳ��ѯ���������Ӧ����Ʒ����
	 */
	public int cs_idQueryAllCategorySecondProductNumber(int cs_id);
	
	/**
	 * ģ����ҳ��ѯ��Ʒ����
	 */
	public List<Product> searchTextQueryProduct(String searchText,Paging paging);
	
	/**
	 * ģ����ҳ��ѯ��Ʒ��������
	 */
	public int searchTextQueryProductNumber(String searchText);
	
	/**
	 * ͨ��һ������id��ѯ���ж�������
	 */
	public List<CategorySecond> cIdQueryCategorySecond(int c_id);
}

package org.bigjava.categorysecond.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.dao.CategorySecondDao;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.function.queryCategorySecond.QueryAllCategorySecond;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CategorySecondDaoImpl extends HibernateDaoSupport implements CategorySecondDao {

	// ��Ӷ�������
	@Override
//	public void addCategorySecond(CategorySecond categorySecond, Category category) {
//		System.out.println("��ʼִ��addCategorySecond����");
//		categorySecond.setCategory(category);
//		this.getHibernateTemplate().save(categorySecond);// ��Ӷ���������
//	}

	public void addCategorySecond(CategorySecond categorySecond) {
		System.out.println("��ʼִ��addCategorySecond����");
		this.getHibernateTemplate().save(categorySecond);// ��Ӷ���������
	}

	// ģ����ҳ��ѯ���ж�������
	@Override
	public List<CategorySecond> queryAllCategorySecond(final String searchCategorySecond, final Paging page) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAllCategorySecond����");
		List<CategorySecond> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// ͨ��hibernateTemplate�ص�sessionFactory����
				// TODO Auto-generated method stub
				Query query = session.createQuery("from CategorySecond where cs_name like ?").setString(0,
						"%" + searchCategorySecond + "%");// ģ����ѯ
				query.setFirstResult(page.getStart());// ��ҳ��ѯ����һ����ʼ��
				query.setMaxResults(page.getPagesize());// ��ҳ��ѯ�������

				return query.list();// ����ѯ����ֵת��Ϊ��������
			}
		});
		System.out.println("ģ����ҳ��ѯ��������" + list);
		return list;
	}

	// ģ����ѯ���ж�������������
	@Override
	public int queryCategorySecondNumber(String searchCategorySecond) {
		System.out.println("��ʼִ��queryCategorySecondNumber����");
		int totalNumber = 0;
		List<Long> list = this.getHibernateTemplate().find("select count(*) from CategorySecond where cs_name like ?",
				searchCategorySecond + "%");// ģ����ѯһ���ж���������
		if (list != null && list.size() != 0) {
			totalNumber = list.get(0).intValue();// ��ȡ��ѯ������������
		}
		System.out.println("��ѯ����������" + totalNumber);
		return totalNumber;
	}

	// ͨ��id��ѯ��������
	@Override
	public CategorySecond queryCategorySecond(int cs_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryCategorySecond����");
		return this.getHibernateTemplate().get(CategorySecond.class, cs_id);
	}

	// ɾ����������
	@Override
	public void deleteCategorySecond(CategorySecond categorySecond) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��deleteCategorySecond����");
		this.getHibernateTemplate().delete(categorySecond);
	}

	// �޸Ķ�������
	@Override
	public void updateCategorySecond(CategorySecond categorySecond) {// categorySecondΪ�޸ĵĶ�����������
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��updateCategorySecond����");
		this.getHibernateTemplate().update(categorySecond);
	}

	// ��ѯȫ����������
	@Override
	public List<QueryAllCategorySecond> showCategorySecond() {
		// TODO Auto-generated method stub
		List<Category> listCategory = this.getHibernateTemplate().find("from Category");
		List<QueryAllCategorySecond> listCategorySecond = new ArrayList<QueryAllCategorySecond>();
		
		for (int i=0; i<listCategory.size(); i++) {
			List<CategorySecond> listCategorySecond2 = this.getHibernateTemplate().find("from CategorySecond where c_id = ?", listCategory.get(i).getC_id());
			QueryAllCategorySecond queryCS = new QueryAllCategorySecond();
			queryCS.setListCategorySecond(listCategorySecond2);
			listCategorySecond.add(queryCS);
		}
		return listCategorySecond;
	}

	// ��CategorySecond����ȫ���Ķ�������
	@Override
	public List<CategorySecond> showAllCategorySecond() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from CategorySecond");
	}

	
	// ��ҳ��ѯ���������Ӧ����Ʒ
	@Override
	public List<Product> cs_idQueryAllCategorySecondProduct(int cs_id,int presentPage) {
		// TODO Auto-generated method stub
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery("from Product where cs_id=?").setInteger(0, cs_id);
		System.out.println("����"+query.list().size());
		Paging paging = new Paging(presentPage, query.list().size(), 10);
		query.setFirstResult(paging.getStart());
		query.setMaxResults(paging.getPagesize());
		return query.list();
	}

	// ģ����ҳ��ѯ��Ʒ��Ϣ
	@Override
	public List<Product> searchTextQueryProduct(String searchText, int presentPage) {
		// TODO Auto-generated method stub
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery("from Product where p_name like ?").setString(0, "%"+searchText+"%");
		System.out.println("����"+query.list().size());
		Paging paging = new Paging(presentPage, query.list().size(), 10);
		query.setFirstResult(paging.getStart());
		query.setMaxResults(paging.getPagesize());
		return query.list();
	}

	// ͨ��һ������id��ѯ���ж�������
	@Override
	public List<CategorySecond> cIdQueryCategorySecond(int c_id) {
		List<CategorySecond> listCategory = this.getHibernateTemplate().find("from CategorySecond where c_id = ?", c_id);
		return listCategory;
	}

}

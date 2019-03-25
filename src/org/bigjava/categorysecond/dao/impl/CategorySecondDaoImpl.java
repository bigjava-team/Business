package org.bigjava.categorysecond.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.dao.CategorySecondDao;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
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
//	public void updateCategorySecond(CategorySecond categorySecond, CategorySecond updatecategorySecond) {// categorySecondΪ���ݿ��еĶ����������ݡ�updatecategorySecondΪ�޸ĵĶ�����������
//		// TODO Auto-generated method stub
//		System.out.println("��ʼִ��updateCategorySecond����");
//		if (updatecategorySecond.getCs_name() == null || updatecategorySecond.getCs_name().equals("")) {// �ж��޸ĵĵ����û�������Ϊ��
//			System.out.println("����������Ϊ��");
//		} else {
//			if (!updatecategorySecond.getCs_name().equals(categorySecond.getCs_name())) {// ����޸ĵĵ����û��������ݿ��еĵ����û�����һ�����䱣����merchant��
//				categorySecond.setCs_name(updatecategorySecond.getCs_name());
//			}
//		}
//		this.getHibernateTemplate().update(categorySecond);
//	}
	public void updateCategorySecond(CategorySecond categorySecond) {// categorySecondΪ�޸ĵĶ�����������
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��updateCategorySecond����");
		this.getHibernateTemplate().update(categorySecond);
	}

	// ��ѯȫ����������
	@Override
	public List<CategorySecond> showCategorySecond() {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��showCategorySecond����");
		List<CategorySecond> listCategorySecond = this.getHibernateTemplate().find("from CategorySecond");
		return listCategorySecond;
	}

}

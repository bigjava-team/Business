package org.bigjava.category.dao.impl;

import java.util.List;

import org.bigjava.category.dao.CategoryDao;
import org.bigjava.category.entity.Category;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CategoryDaoImpl extends HibernateDaoSupport implements CategoryDao {

	// ���һ������
	@Override
	public void addCategory(Category category) {
		// TODO Auto-generated method stub
		System.out.println("��ʼ���");
		this.getHibernateTemplate().save(category);// ���һ������
	}

	// ��ѯ����һ������
	@Override
	public List<Category> queryAllCategory() {
		// TODO Auto-generated method stub
		System.out.println("��ʼ��ѯһ������");
		List<Category> listCategory = this.getHibernateTemplate().find("from Category");// ��ѯȫ����һ������
		return listCategory;
	}

	// ͨ��id��ѯ��Ӧ��һ������
	@Override
	public Category queryCategory(int c_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryCategory����");
		Category category = this.getHibernateTemplate().get(Category.class, c_id);// ͨ��id��ѯһ������
		System.out.println(category);
		return category;
	}

	// ɾ��һ������
	@Override
	public void deleteCategory(Category category) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��deleteCategory����" + category);
		this.getHibernateTemplate().delete(category);// ɾ��һ������
	}

	// �޸�һ������
	@Override
	public void updateCategory(Category category, Category updateCategory) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��updateCategory����");
		if (updateCategory.getC_name() == null || updateCategory.getC_name().equals("")){// �ж�Ҫ�޸ĵ�Category��һ������������Ϊ��
			
		} else {
			category.setC_name(updateCategory.getC_name());// ���޸ĵ�updateCategory��һ������set�������ݿ��л�õ�category��
		}
		this.getHibernateTemplate().update(category);// ��Category��������޸�Ϊcategory
	}

}

package org.bigjava.category.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.bigjava.category.dao.CategoryDao;
import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;
import org.hibernate.Query;
import org.hibernate.classic.Session;
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
		List<Category> listProduct = this.getHibernateTemplate().find("from Category");// ��ѯȫ����һ������
		return listProduct;
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

	// ��ѯһ�������Ӧ����Ʒ
	@Override
	public List<Product> queryC_idCategoryProduct(int c_id, Paging paging) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryC_idCategoryProduct����");
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<Product> listProduct = new ArrayList<Product>();
		List<CategorySecond> listProductSecond = session.createQuery("from CategorySecond where c_id=?").setInteger(0, c_id).list();
		for (int i=0; i<listProductSecond.size(); i++) {
			int number = listProductSecond.get(i).getCs_id();
			List<Product> listProducts = session.createQuery("from Product where cs_id=?").setInteger(0, number).list();
			if (listProducts.size()!=0) {
				for (int j=0; j<listProducts.size(); j++) {
					listProduct.add(listProducts.get(j));
				}
			}
		}
		
		if (paging.getPresentPage() == paging.getPage() && paging.getTotalNumber()%paging.getPagesize()!=0) {
			listProduct = listProduct.subList((paging.getPresentPage()-1)*paging.getPagesize(), (paging.getPresentPage()-1)*paging.getPagesize()+paging.getTotalNumber()%paging.getPagesize());
		} else {
			listProduct = listProduct.subList((paging.getPresentPage()-1)*paging.getPagesize(), paging.getPresentPage()*paging.getPagesize());
		}
		System.out.println("��Ʒ"+listProduct);
		return listProduct.size()!=0 ? listProduct : null;
	}

	// ��ѯһ�������Ӧ����Ʒ����
	@Override
	public int queryC_idCategoryProductNumber(int c_id) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<Long> listProduct;
		int number = 0;
		List<CategorySecond> listProductSecond = session.createQuery("from CategorySecond where c_id=?").setInteger(0, c_id).list();
		for (int i=0; i<listProductSecond.size(); i++) {
			int numbers= listProductSecond.get(i).getCs_id();
			listProduct = session.createQuery("select count(*) from Product where cs_id=?").setInteger(0, numbers).list();
			if (listProduct.size()!=0) {
				for (int j=0; j<listProduct.size(); j++) {
					number += listProduct.get(0).intValue();
				}
			}
		}
		System.out.println("��Ʒ��"+number);
		return number;
	}

}

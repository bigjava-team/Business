package org.bigjava.product.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.image.entity.Images;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.dao.ProductDao;
import org.bigjava.product.entity.Product;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ProductDaoImpl extends HibernateDaoSupport implements ProductDao {

	// �����Ʒ
	@Override
	public void addProduct(Product product, Merchant merchant, CategorySecond categorySecond) {// productΪ��Ʒ���ݡ�merchantΪ�����Ʒ�ĵ��̡�categorySecondΪ��ӵ���Ʒ�����ĸ���������
		// TODO Auto-generated method stub
		System.out.println("��ʼ�����Ʒ");

		product.setMerchant(merchant);// ������id
		product.setCategorySecond(categorySecond);// ��Ӷ����������id

		this.getHibernateTemplate().save(product);// �����Ʒ
	}

	// ͨ����Ʒid��ѯ��Ʒ
	@Override
	public Product queryProduct_id(int p_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryProduct_id����");
		Product product = this.getHibernateTemplate().get(Product.class, p_id);// ͨ����Ʒid��ѯ��Ʒ����
		System.out.println(product);
		return product;
	}

	// �޸���Ʒ����
	@Override
	public void updateProduct(Product product, Product updateProduct) {// productΪ���ݿ��е���Ʒ���ݡ�updateProductΪ�޸ĵ���Ʒ����
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��updateProduct����");

		if (updateProduct.getP_name() == null || updateProduct.getP_name().equals("")) {// �ж��޸ĵ���Ʒ������Ϊ��
		} else {
			product.setP_name(updateProduct.getP_name());// ���޸ĵ���Ʒ���滻���ݿ��е���Ʒ��
		}

		if (updateProduct.getP_price() == null || updateProduct.getP_price().equals("")) {// �ж��޸ĵ���Ʒ���۲���Ϊ��
		} else {
			product.setP_price(updateProduct.getP_price());// ���޸ĵ���Ʒ�����滻���ݿ��е���Ʒ����
		}

		if (updateProduct.getMarket() == null || updateProduct.getMarket().equals("")) {// �ж��޸ĵ���Ʒ�г��۸���Ϊ��
		} else {
			product.setMarket(updateProduct.getMarket());// ���޸ĵ���Ʒ�г��۸��滻���ݿ��е���Ʒ�г��۸�
		}

		if (updateProduct.getP_desc() == null || updateProduct.getP_desc().equals("")) {// �ж��޸ĵ���Ʒ��������Ϊ��
		} else {
			product.setP_desc(updateProduct.getP_desc());// ���޸ĵ���Ʒ�����滻���ݿ��е���Ʒ����
		}

		if (updateProduct.getSale_volume() == 0) {// �ж��޸ĵ���Ʒ����������Ϊ��
		} else {
			product.setSale_volume(updateProduct.getSale_volume());// ���޸ĵ���Ʒ�������滻���ݿ��е���Ʒ������
		}

		if (updateProduct.getP_date() == null || updateProduct.getP_date().equals("")) {// �ж��޸ĵ���Ʒ�ϼ�ʱ�䲻��Ϊ��
		} else {
			product.setP_date(updateProduct.getP_date());// ���޸ĵ���Ʒ�ϼ�ʱ���滻���ݿ��е���Ʒ�ϼ�ʱ��
		}

		if (updateProduct.getP_freeze() == 0) {// �ж��޸ĵ���Ʒ�ϼ�״̬����Ϊ��
		} else {
			product.setP_freeze(updateProduct.getP_freeze());// ���޸ĵ�״̬
		}

		this.getHibernateTemplate().update(product);
	}

	// ģ����ҳ��ѯ���ж�������
	@Override
	public List<Product> queryAllProduct(final String searchProduct, final Paging page) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAllProduct����");
		List<Product> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// ͨ��hibernateTemplate�ص�sessionFactory����
				// TODO Auto-generated method stub
				Query query = session.createQuery("from Product where p_name like ?").setString(0, searchProduct + "%");// ģ����ѯ
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
	public int queryProductNumber(String searchProduct) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryProductNumber����");
		int totalNumber = 0;
		List<Long> list = this.getHibernateTemplate().find("select count(*) from Product where p_name like ?",
				searchProduct + "%");// ģ����ѯһ���ж���������
		if (list != null && list.size() != 0) {
			totalNumber = list.get(0).intValue();// ��ȡ��ѯ������������
		}
		System.out.println("��ѯ����������" + totalNumber);
		return totalNumber;
	}

	// ��ѯ���µ�10����Ʒ
	@Override
	public List<Product> queryProduct_time() {
		// TODO Auto-generated method stub
		System.out.println("��ѯ���µ�10����Ʒ");
		
		String hql = "from Product order by p_date desc";
		List<Product> list = new ArrayList<Product>();
		list = this.getHibernateTemplate().find(hql);
		list = list.subList(0, 10);
		
		return list;
	}

	// ��ѯ���ȵ�10����Ʒ
	@Override
	public List<Product> queryProduct_hot() {
		// TODO Auto-generated method stub
		System.out.println("��ѯ���ȵ�10����Ʒ");
		
		String hql = "from Product order by sale_volume desc";
		List<Product> list = new ArrayList<Product>();
		list = this.getHibernateTemplate().find(hql);
		list.subList(0, 10);
		
		return list;
	}
}

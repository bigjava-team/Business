package org.bigjava.product.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery("from Product where p_id=?").setInteger(0, p_id);// ͨ����Ʒid��ѯ��Ʒ����
		return (Product) query.list().get(0);
	}
	
	/**
	 * �¼���Ʒ
	 */
	public void deleteProduct(Product product) {
		System.out.println("��ʼִ���¼���ƷdeleteProduct����");
		this.getHibernateTemplate().merge(product);
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
		
		if (updateProduct.getP_image() == null || updateProduct.getP_image().equals("")) {// �ж��޸ĵ���Ʒ�ϼ�ʱ�䲻��Ϊ��
		} else {
			product.setP_image(updateProduct.getP_image());// ���޸ĵ���Ʒ�ϼ�ʱ���滻���ݿ��е���Ʒ�ϼ�ʱ��
		}

		if (updateProduct.getP_freeze() == 0) {// �ж��޸ĵ���Ʒ�ϼ�״̬����Ϊ��
		} else {
			product.setP_freeze(updateProduct.getP_freeze());// ���޸ĵ�״̬
		}

		this.getHibernateTemplate().merge(product);
	}

	// ģ����ҳ��ѯ������Ʒ
	@Override
	public List<Product> queryAllProduct(final String searchProduct, final Paging page, final int m_id, final int p_freeze) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAllProduct����");
		List<Product> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// ͨ��hibernateTemplate�ص�sessionFactory����
				// TODO Auto-generated method stub
				String hql = "from Product where p_name like ? ";
				Query query = null;
				if (m_id != 0 && p_freeze != 0) {
					hql += " and m_id=? and p_freeze=?";
					query = session.createQuery(hql).setString(0, searchProduct + "%").setInteger(1, m_id).setInteger(2, p_freeze);
				} else if (m_id!=0) {
					hql += "and m_id = ?";
					query = session.createQuery(hql).setString(0, "%"+searchProduct + "%").setInteger(1, m_id);// ģ����ѯ
				} else if (p_freeze!=0) {
					hql += "and p_freeze = ?";
					query = session.createQuery(hql).setString(0, "%"+searchProduct + "%").setInteger(1, p_freeze);
				} else {
					query = session.createQuery(hql).setString(0, "%"+searchProduct + "%");// ģ����ѯ
				}
				query.setFirstResult(page.getStart());// ��ҳ��ѯ����һ����ʼ��
				query.setMaxResults(page.getPagesize());// ��ҳ��ѯ�������

				return query.list();// ����ѯ����ֵת��Ϊ��������
			}
		});
		System.out.println("ģ����ҳ��ѯ��������" + list);
		return list;
	}

	// ģ����ѯ������Ʒ
	@Override
	public int queryProductNumber(String searchProduct, int m_id, int p_freeze) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryProductNumber����");
		int totalNumber = 0;
		String hql = "select count(*) from Product where p_name like ?";
		List<Long> list = null;
		if (m_id != 0 && p_freeze != 0) {
			hql += " and m_id=? and p_freeze=?";
			list = this.getHibernateTemplate().find(hql,new Object[]{'%'+searchProduct+'%', m_id, p_freeze});
		} else if (m_id != 0) {
			hql += " and m_id = ?";
			list = this.getHibernateTemplate().find(hql,
					new Object[]{searchProduct + '%', m_id});// ģ����ѯһ���ж���������
		} else if (p_freeze != 0) {
			hql += " and p_freeze = ?";
			list = this.getHibernateTemplate().find(hql, new Object[]{searchProduct + '%', p_freeze});
		} else {
			list = this.getHibernateTemplate().find(hql,
					searchProduct + '%');// ģ����ѯһ���ж���������
		}
		if (list != null && list.size() != 0) {
			totalNumber = list.get(0).intValue();// ��ȡ��ѯ������������
		}
		System.out.println("��ѯ����������" + totalNumber);
		return totalNumber;
	}

	// ��ѯ���µ���Ʒ
	@Override
	public List<Product> queryProduct_time() {
		System.out.println("��ѯ���µ���Ʒ");
		
		String hql = "from Product order by p_date desc";
		List<Product> list = new ArrayList<Product>();
		list = this.getHibernateTemplate().find(hql);
		
		return list;
	}

	// ��ѯ���ȵ���Ʒ
	@Override
	public List<Product> queryProduct_hot() {
		System.out.println("��ѯ���ȵ���Ʒ");
		
		String hql = "from Product order by sale_volume desc";
		List<Product> list = new ArrayList<Product>();
		list = this.getHibernateTemplate().find(hql);
		
		return list;
	}

	// ��ѯȫ������Ʒ
	@Override
	public List<Product> queryAllCommentProduct() {
		return this.getHibernateTemplate().find("from Product");
	}

	// ��ѯ���������µ���Ʒ
	@Override
	public List<Product> queryMerchantProduct_time(int m_id) {
		System.out.println("��ѯ���������µ���Ʒ");
		String hql = "from Product where m_id=? order by p_date desc";
		return (List<Product>) this.getHibernateTemplate().find(hql, m_id);
	}

	// ��ѯ���������ȵ���Ʒ
	@Override
	public List<Product> queryMerchantProduct_hot(int m_id) {
		String hql = "from Product where m_id=? order by sale_volume desc";
		return (List<Product>) this.getHibernateTemplate().find(hql, m_id);
	}

	// ��ѯ���������µ���Ʒ
	@Override
	public List<Product> setQueryMerchantProduct_time(int m_id) {
		// TODO Auto-generated method stub
		List<Product> setProduct = this.getHibernateTemplate().find("from Product where m_id=?", m_id);
		return setProduct;
	}

	// ͨ�����������ѯ��Ʒ
	@Override
	public Product csIdQueryProduct(int cs_id) {
		List<Product> list = this.getHibernateTemplate().find("from Product where cs_id=?", cs_id);
		return list.size()>0 ? list.get(0) : null;
	}

	// ������Ʒ���ٿ�桢����������
	@Override
	public void payProductUpdateVolumeRepertory(Product product) {
		this.getHibernateTemplate().update(product);
	}
}

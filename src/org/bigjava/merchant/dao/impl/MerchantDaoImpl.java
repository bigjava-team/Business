package org.bigjava.merchant.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.merchant.dao.MerchantDao;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class MerchantDaoImpl extends HibernateDaoSupport implements MerchantDao {

	// �û�ע�����
	@Override
	public void registerMerchant(Merchant merchant, User user) {// merchantΪ��ӵĵ�����Ϣ��userΪ��ӵ��̵��û���Ϣ
		// TODO Auto-generated method stub
		System.out.println("��ʼע�����");
		
		merchant.setUser(user);// ��ȡ��Ӧuser������id
		
		this.getHibernateTemplate().save(merchant);// ע�������Ϣ
		
	}
	
	// ɾ������
	@Override
	public void deleteMerchant(Merchant merchant) {
		// TODO Auto-generated method stub
		System.out.println("��ʼɾ��");
		
		this.getHibernateTemplate().delete(merchant);// ɾ��merchant�ڵĵ�����Ϣ
	}

	// ͨ������id��ѯ������Ϣ
	@Override
	public Merchant queryMerchant(int m_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼ��ѯ");
		Merchant merchant = this.getHibernateTemplate().get(Merchant.class, m_id);// ͨ������id��ȡ������Ϣ
		return merchant;
	}

	// �޸ĵ���
	@Override
	public void updateMerchant(Merchant merchant, Merchant updateMerchant) {// merchant���ݿ��еĵ�����Ϣ���޸ĵĵ�����Ϣ
		// TODO Auto-generated method stub
		System.out.println("��ʼ�޸ĵ�����");
		
		if (updateMerchant.getM_name() == null || updateMerchant.getM_name().equals("")) {// �ж��޸ĵĵ���������Ϊ��
			
		} else {
			if (!updateMerchant.getM_name().equals(merchant.getM_name())) {// ����޸ĵĵ����������ݿ��еĵ�������һ�����䱣����merchant��
				merchant.setM_name(updateMerchant.getM_name());
			}
		}
		
		if (updateMerchant.getM_image() == null || updateMerchant.getM_image().equals("")) {// �ж��޸ĵĵ���ͼƬ·������Ϊ��
			
		} else {
			if (!updateMerchant.getM_image().equals(merchant.getM_image())) {// ����޸ĵĵ���ͼƬ·�������ݿ��еĵ���ͼƬ·����һ�����䱣����merchant��
				merchant.setM_image(updateMerchant.getM_image());
			}
		}
		
		if (updateMerchant.getM_is_freeze() == 0) {// �ж��޸ĵĵ���״̬����Ϊ0
			
		} else {
			if (updateMerchant.getM_is_freeze() != merchant.getM_is_freeze()) {// ����޸ĵĵ���״̬�����ݿ��еĵ���״̬��һ�����䱣����merchant��
				merchant.setM_is_freeze(updateMerchant.getM_is_freeze());	
			}
		}
		
		this.getHibernateTemplate().update(merchant);// �޸����ݿ��е��̵�����
		
	}

	/**
	 * ��ӵ��̹���
	 */
	@Override
	public void addNotice(Merchant merchant) {
		this.getHibernateTemplate().save(merchant);
	}

	// ɾ�����̹���
	@Override
	public void updateNotice(Merchant merchant) {
		this.getHibernateTemplate().update(merchant);
	}

	// ��ѯ��ҵĶ�������
	@Override
	public List<Orders> queryListOrders(int m_id) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<Orders> listOrders = new ArrayList<Orders>();
		List<Product> listProduct = session.createQuery("from Product where m_id=?").setInteger(0, m_id).list();
		System.out.println(listProduct);
		if (listProduct.size()!=0) {
			for (int i=0; i<listProduct.size(); i++) {
				int numberP_id = listProduct.get(i).getP_id();
				List<Orderitem> listOrderitem = session.createQuery("from Orderitem where p_id=?").setInteger(0, numberP_id).list();
				System.out.println(listOrderitem);
				if (listOrderitem.size()!=0) {
					for (int j=0; j<listProduct.size(); j++) {
						int numberItem_id = listOrderitem.get(j).getOrders().getO_id();
						List<Orders> LOS = session.createQuery("from Orders where o_id=?").setInteger(0, numberItem_id).list();
						System.out.println(LOS);
						for (int z=0; z<LOS.size(); z++) {
							listOrders.add(LOS.get(z));
						}
						System.out.println(listOrders);
					}
				}
			}
		}
		session.close();
		System.out.println("���̵Ķ���"+listOrders);
		return listOrders;
	}

	// �޸���ҵĶ�����״̬
	@Override
	public void updateOrdersState(Orders orders) {
		System.out.println("�޸���ҵĶ�����״̬");
		this.getHibernateTemplate().update(orders);
	}

	// ͨ���û�id��ѯ����
	@Override
	public Merchant queryUidMerchant(int u_id) {
		System.out.println("ͨ���û�id��ѯ����");
		List<Merchant> listMerchant = this.getHibernateTemplate().find("from Merchant where u_id=?", u_id);
		if (listMerchant.size() == 0) {
			System.out.println("û�е���");
			return null;
		}
		return listMerchant.get(0);
	}
}

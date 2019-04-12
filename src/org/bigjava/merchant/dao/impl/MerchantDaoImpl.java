package org.bigjava.merchant.dao.impl;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.merchant.dao.MerchantDao;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;
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
	public void addNotice(String notice) {
		this.getHibernateTemplate().save(notice);
	}

}

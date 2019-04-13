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

	// 用户注册店铺
	@Override
	public void registerMerchant(Merchant merchant, User user) {// merchant为添加的店铺信息、user为添加店铺的用户信息
		// TODO Auto-generated method stub
		System.out.println("开始注册店铺");
		
		merchant.setUser(user);// 获取对应user的主键id
		
		this.getHibernateTemplate().save(merchant);// 注册店铺信息
		
	}
	
	// 删除店铺
	@Override
	public void deleteMerchant(Merchant merchant) {
		// TODO Auto-generated method stub
		System.out.println("开始删除");
		
		this.getHibernateTemplate().delete(merchant);// 删除merchant内的店铺信息
	}

	// 通过店铺id查询店铺信息
	@Override
	public Merchant queryMerchant(int m_id) {
		// TODO Auto-generated method stub
		System.out.println("开始查询");
		Merchant merchant = this.getHibernateTemplate().get(Merchant.class, m_id);// 通过店铺id获取店铺信息
		return merchant;
	}

	// 修改店铺
	@Override
	public void updateMerchant(Merchant merchant, Merchant updateMerchant) {// merchant数据库中的店铺信息、修改的店铺信息
		// TODO Auto-generated method stub
		System.out.println("开始修改店铺名");
		
		if (updateMerchant.getM_name() == null || updateMerchant.getM_name().equals("")) {// 判断修改的店铺名不能为空
			
		} else {
			if (!updateMerchant.getM_name().equals(merchant.getM_name())) {// 如果修改的店铺名与数据库中的店铺名不一样将其保存至merchant中
				merchant.setM_name(updateMerchant.getM_name());
			}
		}
		
		if (updateMerchant.getM_image() == null || updateMerchant.getM_image().equals("")) {// 判断修改的店铺图片路径不能为空
			
		} else {
			if (!updateMerchant.getM_image().equals(merchant.getM_image())) {// 如果修改的店铺图片路径与数据库中的店铺图片路径不一样将其保存至merchant中
				merchant.setM_image(updateMerchant.getM_image());
			}
		}
		
		if (updateMerchant.getM_is_freeze() == 0) {// 判断修改的店铺状态不能为0
			
		} else {
			if (updateMerchant.getM_is_freeze() != merchant.getM_is_freeze()) {// 如果修改的店铺状态与数据库中的店铺状态不一样将其保存至merchant中
				merchant.setM_is_freeze(updateMerchant.getM_is_freeze());	
			}
		}
		
		this.getHibernateTemplate().update(merchant);// 修改数据库中店铺的内容
		
	}

	/**
	 * 添加店铺公告
	 */
	@Override
	public void addNotice(Merchant merchant) {
		this.getHibernateTemplate().save(merchant);
	}

	// 删除店铺公告
	@Override
	public void updateNotice(Merchant merchant) {
		this.getHibernateTemplate().update(merchant);
	}

	// 查询买家的订单详情
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
		System.out.println("店铺的订单"+listOrders);
		return listOrders;
	}

	// 修改买家的订单的状态
	@Override
	public void updateOrdersState(Orders orders) {
		System.out.println("修改买家的订单的状态");
		this.getHibernateTemplate().update(orders);
	}

	// 通过用户id查询店铺
	@Override
	public Merchant queryUidMerchant(int u_id) {
		System.out.println("通过用户id查询店铺");
		List<Merchant> listMerchant = this.getHibernateTemplate().find("from Merchant where u_id=?", u_id);
		if (listMerchant.size() == 0) {
			System.out.println("没有店铺");
			return null;
		}
		return listMerchant.get(0);
	}
}

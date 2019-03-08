package org.bigjava.merchant.dao.impl;

import org.bigjava.merchant.dao.MerchantDao;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;
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
	
	// 通过id查询用户
	@Override
	public User queryUser(int id) {
		// TODO Auto-generated method stub
		System.out.println("通过id查询");
		User user = this.getHibernateTemplate().get(User.class, id);//	通过id查询用户
		return user;
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
		
		if (updateMerchant.getM_name() == null || updateMerchant.getM_name().equals("")) {// 判断修改的店铺用户名不能为空
			
		} else {
			if (!updateMerchant.getM_name().equals(merchant.getM_name())) {// 如果修改的店铺用户名不一样将其保存至merchant中
				merchant.setM_name(updateMerchant.getM_name());
			}
		}
		
		if (updateMerchant.getM_image() == null || updateMerchant.getM_image().equals("")) {// 判断修改的店铺图片路径不能为空
			
		} else {
			if (!updateMerchant.getM_image().equals(merchant.getM_image())) {// 如果修改的店铺图片路径不一样将其保存至merchant中
				merchant.setM_image(updateMerchant.getM_image());
			}
		}
		
		if (updateMerchant.getM_is_freeze() == 0) {// 判断修改的店铺状态不能为0
			
		} else {
			if (updateMerchant.getM_is_freeze() != merchant.getM_is_freeze()) {// 如果修改的店铺状态不一样将其保存至merchant中
				merchant.setM_is_freeze(updateMerchant.getM_is_freeze());	
			}
		}
		
		this.getHibernateTemplate().update(merchant);// 修改数据库中店铺的内容
		
	}

	// 添加商品
	@Override
	public void addProduct(Product product, Merchant merchant) {// product为商品内容、merchant为添加商品的店铺
		// TODO Auto-generated method stub
		System.out.println("开始添加商品");
		
		product.setMerchant(merchant);// 添加外键id
		
		this.getHibernateTemplate().save(product);// 添加商品
	}

}

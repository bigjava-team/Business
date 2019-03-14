package org.bigjava.orderitem.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.orderitem.dao.OrderItemDao;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class OrderItemDaoImpl extends HibernateDaoSupport implements OrderItemDao {

	// 添加订单项
	@Override
	public void addOrderItem(Orderitem orderItem, User user, Product product) {// orderItem为添加的订单项的内容、user为添加订单项的用户、product为订单项的商品
		// TODO Auto-generated method stub
		System.out.println("开始执行addOrderItem方法");
		
		orderItem.setUser(user);// 获取连接用户的外键
		orderItem.setProduct(product);// 获取连接商品的外键
		
		this.getHibernateTemplate().save(orderItem);// 添加订单项
	}

	// 删除订单项
	@Override
	public void deleteOrderItem(Orderitem orderItem) {
		// TODO Auto-generated method stub
		System.out.println("开始执行deleteOrderItem方法");
		this.getHibernateTemplate().delete(orderItem);
	}

	// 通过订单项id查询订单项
	@Override
	public Orderitem queryOrderItem_id(int item_id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryOrderItem_id方法");
		return this.getHibernateTemplate().get(Orderitem.class, item_id);
	}

	// 分页条件查询订单项
	@Override
	public List<Orderitem> queryAllOrderItem(final User user, final Paging page) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryAllOrderItem方法");
		List<Orderitem> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// 通过hibernateTemplate回调sessionFactory方法
				// TODO Auto-generated method stub
				String hql = "from Orderitem";
				Query query = null;
				if (user.getRoot() == 3) {
					query = session.createQuery(hql);// 管理员查询订单项表
				} else {
					hql += " where u_id = ?";
					query = session.createQuery(hql).setInteger(0, user.getU_id());// 普通用户和店长查询订单项表
				}
				query.setFirstResult(page.getStart());// 分页查询从哪一条开始查
				query.setMaxResults(page.getPagesize());// 分页查询查多少条

				return query.list();// 将查询到的值转换为数组类型
			}
		});
		System.out.println("查询到的数据" + list);
		return list;
	}

	// 条件查询订单项数
	@Override
	public int queryOrderItemNumber(User user) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryOrderItemNumber方法");
		List<Long> listNumber = null;
		int totalNumber = 0;// 查询到的数据条数
		String hql = "select count(*) from Orderitem";// 查询全部的订单项
		if (user.getRoot() == 3) {// 管理员查询订单项表时
			listNumber = this.getHibernateTemplate().find(hql);
		} else {
			hql += " where u_id = ?";
			listNumber = this.getHibernateTemplate().find(hql, user.getU_id());// 
		}
		if (listNumber.size() !=0 ) {
			totalNumber = listNumber.get(0).intValue();
		}
		System.out.println("查询到"+totalNumber+"条");
		return totalNumber;
	}
	
	

}

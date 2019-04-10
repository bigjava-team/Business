package org.bigjava.orders.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.addr.entity.Addr;
import org.bigjava.function.Paging;
import org.bigjava.orders.dao.OrdersDao;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class OrdersDaoImpl extends HibernateDaoSupport implements OrdersDao {

	// 添加订单
	@Override
	public void addOrders(Orders orders, User user, Addr addr) {
		// TODO Auto-generated method stub
		System.out.println("开始执行addOrders方法");
		
		orders.setUser(user);// 添加与User类的外键
		orders.setAddr(addr);// 添加与Addr类的外键
		
		this.getHibernateTemplate().save(orders);// 添加订单信息
		
	}

	// 删除订单信息(退货)
	@Override
	public void deleteOrders(Orders orders) {
		// TODO Auto-generated method stub
		System.out.println("开始执行deleteOrders方法");
		this.getHibernateTemplate().delete(orders);// 删除订单信息
	}

	// 通过订单id获取订单信息
	@Override
	public Orders queryOrders_id(int o_id) {
		// TODO Auto-generated method stub
		System.out.println("执行queryOrders_id方法");
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<Orders> listOrders = session.createQuery("from Orders where o_id=?").setInteger(0, o_id).list();
		return listOrders.size() > 0 ? listOrders.get(0) : null;// 通过订单id获取订单信息
	}

	// 分页条件查询订单信息
	@Override
	public List<Orders> queryAllOrders(Paging page, User user) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryAllOrders方法");
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		String hql = "from Orders";
		Query query = null;
		if (user.getRoot() == 3) {
			hql+=" order by ordertime desc";
			query = session.createQuery(hql);
		} else {
			hql += " where u_id = ? order by ordertime desc";
			query = session.createQuery(hql).setInteger(0, user.getU_id());// 通过用户id查询订单内容
		}
		List<Orders> listOrders = query.setFirstResult(page.getStart()).setMaxResults(page.getPagesize()).list();
		System.out.println("查询到的数据" + listOrders);
		return listOrders.size() > 0 ? listOrders : null;
	}

	// 条件查询订单的数量
	@Override
	public int queryAllOrdersNumber(User user) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryAllOrdersNumber方法");
		int totalNumber = 0;
		List<Long> list = null;
		String hql = "select count(*) from Orders";
		if (user.getRoot() == 3) {// 管理员权限查询全部订单信息
			list = this.getHibernateTemplate().find(hql);
		} else {
			hql += " where u_id = ?";
			list = this.getHibernateTemplate().find(hql, user.getU_id());// 普通用户和店长的权限通过u_id外键查询对应的Orders订单信息
		}
		if (list.size() != 0) {
			totalNumber = list.get(0).intValue();
		}
		return totalNumber;
	}

	// 通过订单编号查询订单
	@Override
	public Orders orderNumberQueryOrders(String orderNumber) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		String hql = "from Orders where orderNumber = ?";
		List<Orders> list = session.createQuery(hql).setString(0, orderNumber).list();
		System.out.println(list.get(0));
		session.clear();
		return list.size() > 0 ? list.get(0) : null;
	}

	// 修改订单的状态
	@Override
	public void updateOrdersState(Orders orders) {
		System.out.println("开始执行updateOrdersState方法");
		this.getHibernateTemplate().update(orders);
	}

}

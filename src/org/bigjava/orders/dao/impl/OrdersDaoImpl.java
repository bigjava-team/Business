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

	// ��Ӷ���
	@Override
	public void addOrders(Orders orders, User user, Addr addr) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��addOrders����");
		
		orders.setUser(user);// �����User������
		orders.setAddr(addr);// �����Addr������
		
		this.getHibernateTemplate().save(orders);// ��Ӷ�����Ϣ
		
	}

	// ɾ��������Ϣ(�˻�)
	@Override
	public void deleteOrders(Orders orders) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��deleteOrders����");
		this.getHibernateTemplate().delete(orders);// ɾ��������Ϣ
	}

	// ͨ������id��ȡ������Ϣ
	@Override
	public Orders queryOrders_id(int o_id) {
		// TODO Auto-generated method stub
		System.out.println("ִ��queryOrders_id����");
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<Orders> listOrders = session.createQuery("from Orders where o_id=?").setInteger(0, o_id).list();
		return listOrders.size() > 0 ? listOrders.get(0) : null;// ͨ������id��ȡ������Ϣ
	}

	// ��ҳ������ѯ������Ϣ
	@Override
	public List<Orders> queryAllOrders(Paging page, User user) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAllOrders����");
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		String hql = "from Orders";
		Query query = null;
		if (user.getRoot() == 3) {
			hql+=" order by ordertime desc";
			query = session.createQuery(hql);
		} else {
			hql += " where u_id = ? order by ordertime desc";
			query = session.createQuery(hql).setInteger(0, user.getU_id());// ͨ���û�id��ѯ��������
		}
		List<Orders> listOrders = query.setFirstResult(page.getStart()).setMaxResults(page.getPagesize()).list();
		System.out.println("��ѯ��������" + listOrders);
		return listOrders.size() > 0 ? listOrders : null;
	}

	// ������ѯ����������
	@Override
	public int queryAllOrdersNumber(User user) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAllOrdersNumber����");
		int totalNumber = 0;
		List<Long> list = null;
		String hql = "select count(*) from Orders";
		if (user.getRoot() == 3) {// ����ԱȨ�޲�ѯȫ��������Ϣ
			list = this.getHibernateTemplate().find(hql);
		} else {
			hql += " where u_id = ?";
			list = this.getHibernateTemplate().find(hql, user.getU_id());// ��ͨ�û��͵곤��Ȩ��ͨ��u_id�����ѯ��Ӧ��Orders������Ϣ
		}
		if (list.size() != 0) {
			totalNumber = list.get(0).intValue();
		}
		return totalNumber;
	}

	// ͨ��������Ų�ѯ����
	@Override
	public Orders orderNumberQueryOrders(String orderNumber) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		String hql = "from Orders where orderNumber = ?";
		List<Orders> list = session.createQuery(hql).setString(0, orderNumber).list();
		System.out.println(list.get(0));
		session.clear();
		return list.size() > 0 ? list.get(0) : null;
	}

	// �޸Ķ�����״̬
	@Override
	public void updateOrdersState(Orders orders) {
		System.out.println("��ʼִ��updateOrdersState����");
		this.getHibernateTemplate().update(orders);
	}

}

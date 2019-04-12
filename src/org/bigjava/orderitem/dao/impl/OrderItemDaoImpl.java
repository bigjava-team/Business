package org.bigjava.orderitem.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.orderitem.dao.OrderItemDao;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class OrderItemDaoImpl extends HibernateDaoSupport implements OrderItemDao {

	// ��Ӷ�����
	@Override
	public void addOrderItem(Orderitem orderitem) {// orderItemΪ��ӵĶ���������ݡ�userΪ��Ӷ�������û���productΪ���������Ʒ
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��addOrderItem����");
		
		this.getHibernateTemplate().save(orderitem);// ��Ӷ�����
	}

	// ɾ��������
	@Override
	public void deleteOrderItem(Orderitem orderItem) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��deleteOrderItem����");
		this.getHibernateTemplate().delete(orderItem);
	}

	// ͨ��������id��ѯ������
	@Override
	public Orderitem queryOrderItem_id(int item_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryOrderItem_id����");
//		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
//		Orderitem orderitem = (Orderitem) session.get(Orderitem.class, item_id);
		return this.getHibernateTemplate().get(Orderitem.class, item_id);
	}

	// ��ҳ������ѯ������
	@Override
	public List<Orderitem> queryAllOrderItem(final User user, final Paging page) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAllOrderItem����");
		List<Orderitem> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// ͨ��hibernateTemplate�ص�sessionFactory����
				// TODO Auto-generated method stub
				String hql = "from Orderitem where o_id = null";
				Query query = null;
				if (user.getRoot() == 3) {
					query = session.createQuery(hql);// ����Ա��ѯ�������
				} else {
					hql += " and u_id = ?";
					query = session.createQuery(hql).setInteger(0, user.getU_id());// ��ͨ�û��͵곤��ѯ�������
				}
				query.setFirstResult(page.getStart());// ��ҳ��ѯ����һ����ʼ��
				query.setMaxResults(page.getPagesize());// ��ҳ��ѯ�������

				return query.list();// ����ѯ����ֵת��Ϊ��������
			}
		});
		System.out.println("��ѯ��������" + list);
		return list;
	}

	// ������ѯ��������
	@Override
	public int queryOrderItemNumber(User user) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryOrderItemNumber����");
		List<Long> listNumber = null;
		int totalNumber = 0;// ��ѯ������������
		String hql = "select count(*) from Orderitem";// ��ѯȫ���Ķ�����
		if (user.getRoot() == 3) {// ����Ա��ѯ�������ʱ
			listNumber = this.getHibernateTemplate().find(hql);
		} else {
			hql += " where u_id = ?";
			listNumber = this.getHibernateTemplate().find(hql, user.getU_id());// ͨ�������û�������u_id��ѯ����������� 
		}
		if (listNumber.size() !=0 ) {
			totalNumber = listNumber.get(0).intValue();
		}
		System.out.println("��ѯ��"+totalNumber+"��");
		return totalNumber;
	}

	// �޸Ķ�����
	@Override
	public void updateOrderItem(Orderitem orderItem, Orderitem updateOrderItem) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��updateOrderItem����");
		if (updateOrderItem.getCount() == 0) {// �ж��޸ĵĶ�����������count��Ʒ��������Ϊ��
		} else {
			orderItem.setCount(updateOrderItem.getCount());// ���޸ĵĶ�����������count��Ʒ�����滻���ݿ��е�count����
		}
		
		if (updateOrderItem.getSubtotal() == 0) {// �ж��޸ĵĶ�����������subtotal��ƷС�Ʋ���Ϊ��
		} else {
			orderItem.setSubtotal(updateOrderItem.getSubtotal());// ���޸ĵĶ�����������subtotal��ƷС���滻���ݿ��е�count����
		}
		
		this.getHibernateTemplate().update(orderItem);// ���޸ĵ����ݴ�������ݿ���
	}

	// ������Ӷ���������
	@Override
	public void addOrders_id(List<Orderitem> listOrderItem, Orders orders) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��addOrders_id����");
		for (int i=0; i<listOrderItem.size(); i++) {
			Orderitem orderItem = listOrderItem.get(i);
			
			orderItem.setOrders(orders);
			this.getHibernateTemplate().update(orderItem);
		}
		System.out.println("�޸Ľ���");
	}

	// ͨ������id��ѯ��Ӧ�Ķ�����
	@Override
	public List<Orderitem> queryAllOrderitem_o_id(int o_id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Orderitem where o_id = ?", o_id);
	}

}

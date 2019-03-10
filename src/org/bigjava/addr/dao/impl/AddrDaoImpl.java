package org.bigjava.addr.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.bigjava.addr.dao.AddrDao;
import org.bigjava.addr.entity.Addr;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class AddrDaoImpl extends HibernateDaoSupport implements AddrDao {

	// ����ջ���ַ
	@Override
	public void addAddr(Addr addr, User user) {// addrΪ�ջ���ַ��userΪ����ջ���ַ���û�
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��addAddr����");
		
		addr.setUser(user);// ��ȡ���ӵ����idֵ
		
		this.getHibernateTemplate().save(addr);// �洢�ջ���ַ����Ϣ
		
	}

	// �޸��ջ���ַ
	@Override
	public void updateAddr(Addr addr, Addr updateAddr) {// addrΪ���ݿ��е��ջ���ַ��updateAddrΪ�޸ĺ���ջ���ַ
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��updateAddr����");
		
		if (updateAddr.getA_name() == null || updateAddr.getA_name().equals("")) {// �ж��޸ĵ��ռ��˲���Ϊ��
			
		} else {
			if (!updateAddr.getA_name().equals(addr.getA_name())) {// ����޸ĵ��ռ��������ݿ��е��ռ��˲�һ�����䱣����addr��
				addr.setA_name(updateAddr.getA_name());
			}
		}
		
		if (updateAddr.getA_phone() == null || updateAddr.getA_phone().equals("")) {// �ж��޸ĵ��ֻ����벻��Ϊ��
			
		} else {
			if (!updateAddr.getA_phone().equals(addr.getA_phone())) {// ����޸ĵ��ֻ����������ݿ��е��ֻ����벻һ�����䱣����addr��
				addr.setA_phone(updateAddr.getA_phone());
			}
		}
		
		if (updateAddr.getAddress() == null || updateAddr.getAddress().equals("")) {// �ж��޸ĵ��ջ���ַ����Ϊ��
			
		} else {
			if (!updateAddr.getAddress().equals(addr.getAddress())) {// ����޸ĵ��ջ���ַ�����ݿ��е��ջ���ַ��һ�����䱣����addr��
				addr.setAddress(updateAddr.getAddress());	
			}
		}
		
		this.getHibernateTemplate().update(addr);
		
	}

	// ɾ���ջ���ַ
	@Override
	public void deleteAddr(Addr addr) {// addrΪɾ�����ջ���ַ
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��deleteAddr����");
		this.getHibernateTemplate().delete(addr);
		
	}

	// �����û�Ȩ�ޣ���ҳ��ѯ�ջ���ַ
	@Override
	public List<Addr> queryAllAddr(final Paging page, final User user) {// pageΪ��ҳ���ࡢuserΪ���в�ѯ�ջ��ĵ�ַ���û�
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAllAddr����");
		List<Addr> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// ͨ��hibernateTemplate�ص�sessionFactory����
				// TODO Auto-generated method stub
				String hql = "from Addr";
				Query query = null;
				if (user.getRoot() == 1 || user.getRoot() == 2) {
					hql += " where u_id = ?";
					query = session.createQuery(hql).setInteger(0, user.getU_id());// ͨ���û�id��ѯ�ջ���ַ
				} else if (user.getRoot() == 3) {
					query = session.createQuery("from Addr");
				}
				query.setFirstResult(page.getStart());// ��ҳ��ѯ����һ����ʼ��
				query.setMaxResults(page.getPagesize());// ��ҳ��ѯ�������

				return query.list();// ����ѯ����ֵת��Ϊ��������
			}
		});
		System.out.println("��ѯ��������" + list);
		return null;
	}

	// �����û�Ȩ�ޣ���ѯ�ջ���ַ������
	@Override
	public int queryAllAddrNumber(User user) {// userΪ��ѯ�ջ���ַ���û���u_idΪ
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAllNumber����");
		int totalNumber = 0;
		List<Long> list = new ArrayList<Long>();
		String hql = "select count(*) from Addr";// ��ѯ�ջ���ַ�ĸ���
		if (user.getRoot() == 1 || user.getRoot() == 2) {
			hql += " where u_id = ?";
			list = this.getHibernateTemplate().find(hql, user.getU_id());// ��ͨ�û��͵곤��ѯ�Լ����ջ���ַ
		} else if (user.getRoot() == 3) {
			list = this.getHibernateTemplate().find(hql);// ����Ա��ѯ���е��ջ���ַ
		}
		
		if (list.size() != 0 || list != null) {
			totalNumber = list.get(0).intValue();// ��ȡ��ѯ�����ջ���ַ����
		}
		System.out.println("��ѯ��������" + totalNumber);
		return totalNumber;
	}

	// �����ջ���ַid��ѯ�ջ���ַ��Ϣ
	@Override
	public Addr queryAddr_id(int id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAddr_id����");
		return this.getHibernateTemplate().get(Addr.class, id);// ͨ��id��ѯ�ջ���ַ
	}

}
